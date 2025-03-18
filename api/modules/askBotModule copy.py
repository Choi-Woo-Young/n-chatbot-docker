from typing import Dict

from fastapi import HTTPException
from api.config.database import get_db
from api.config.globals import logger
import api.config.globals as g
import asyncio
from threading import Thread
import os
from api.custom.limitedRedisChatMessageHistory import LimitedRedisChatMessageHistory
from api.repositories import embedding_file_repository
from ..config import schemas, models
from queue import Queue
from json import dumps
from api.modules.retrieverModule import get_retriever
from api.modules import safetyFilterModule
from api.repositories.chatroom_repository import register_chat_message
from fastapi.responses import PlainTextResponse, StreamingResponse
from api.utils.handler import CustomChatCallbackHandler
from langchain_community.chat_models import ChatOllama
from langchain_core.prompts import ChatPromptTemplate, MessagesPlaceholder
from langchain_core.runnables import RunnableLambda, RunnablePassthrough
from langchain_openai import ChatOpenAI
from langchain.memory import ConversationSummaryBufferMemory, ConversationBufferMemory, ConversationBufferWindowMemory
from langchain_community.chat_message_histories import ChatMessageHistory
from langchain_community.chat_message_histories import RedisChatMessageHistory
from langchain.prompts import ChatPromptTemplate, MessagesPlaceholder
from langchain_core.chat_history import BaseChatMessageHistory
from langchain_core.runnables.history import RunnableWithMessageHistory
from langchain_core.output_parsers import StrOutputParser
from langchain.prompts import load_prompt
from langchain_core.runnables.base import RunnableParallel, RunnableLambda
from langchain_community.document_loaders import UnstructuredFileLoader
from collections import Counter
from konlpy.tag import Okt


def chat_with_bot(chat_message: models.ChatMessageModel):
    return StreamingResponse(response_generator(chat_message, Queue()), media_type='text/event-stream')


async def response_generator(chat_message: models.ChatMessageModel, streamer_queue: Queue):
    try:
        response_text = ""
        # Start the generation process
        start_generation(chat_message, streamer_queue)

    # Starting an infinite loop
        while True:
            # Obtain the value from the streamer queue
            value = streamer_queue.get()
            # Check for the stop signal, which is None in our case
            if value == None:
                # If stop signal is found break the loop
                # 대화 내용 메모리에 저장
                if is_valid_answer(response_text) and chat_message.ref_sources and chat_message.ref_sources != "":
                    ref_source = chat_message.ref_sources.split(".")[0]
                    yield "\n[출처:"+ref_source+"]"

                    response_text = response_text + "\n[출처:"+ref_source+"]"
                    chat_message.ref_sources = ""
                    g.chat_memory_model.save_context(chat_message.chat_id, {
                                                     "input": chat_message.chat_message}, {"output": response_text})

                break
            # Else yield the value
            response_text = response_text + value
            # response_text = safetyFilterModule.clean(response_text)
            yield value
            # statement to signal the queue that task is done
            streamer_queue.task_done()

            # register_chat_message(query)

            # guard to make sure we are not extracting anything from
            # empty queue
            await asyncio.sleep(0.1)
    except Exception as e:
        logger.error(f'response_generator error: {e}')
        yield "챗봇에게 질문하는 중 오류가 발생했습니다."
        streamer_queue.task_done()

# Generate wrapper function as discussed above
# Please extend this with the required functionality
# We are not returning anything as llm has already been tagged
# to the handler which streams the output


def start_generation(chat_message: models.ChatMessageModel, streamer_queue: Queue):
    # Creating a thread with generate function as a target
    thread = Thread(target=generate, kwargs={
                    "chat_message": chat_message, "streamer_queue": streamer_queue})
    # Starting the thread
    thread.start()


def format_docs(docs):
    return "\n\n".join(document.page_content for document in docs)


def generate(chat_message: models.ChatMessageModel, streamer_queue: Queue):

    chain_with_runnable_with_message_history(chat_message, streamer_queue)

    # chain_with_conversation_memory(chat_message)


# 1) RunnableWithMessageHistory를 이용
def chain_with_runnable_with_message_history(chat_message: models.ChatMessageModel, streamer_queue: Queue):
    try:
        # chat_message.converted_utterance기 없으면 chat_message.chat_message를 query에 넣음
        chat_message.ref_sources = ""
        chat_id = chat_message.chat_id
        selected_cd = chat_message.selected_cd
        service_cd = chat_message.service_cd
        query = chat_message.chat_message
        previous_query = chat_message.previous_query

        if selected_cd != "" and selected_cd == service_cd:
            query = previous_query

        service_name = ""
        chat_prompt = None

        law_chat_prompt = ChatPromptTemplate.from_messages(
            [
                ("system", """You are a friendly AI assistant that answers questions in Korean. Use only the provided context and conversation history—do not use your training data.

                - Ask any clarifying questions if needed. Once you have enough information, give a specific and concise answer.
                - If you don't know the answer, just say so. Do not make up any information.
                - Keep your response under 100 words.
                - Do not start your response with "Answer".
                - Respond in a warm and friendly tone, as if talking to a close friend.
                - Make sure you respond in Korean.
                - Add a proper line to your answer to increase readability

                Context: {context}
                """),
                MessagesPlaceholder(variable_name="history"),
                ("human", "Question:{question}")
            ]
        )

        common_service_chat_prompt = ChatPromptTemplate.from_messages(
            [
                ("system", """
                 # Role
                You are a highly skilled AI assistant specializing in answering questions based on provided context. Your primary task is to respond to user queries by strictly using the given information without relying on external knowledge or your training data.

                # Instruction
                - If the question is in Korean, translate it to English for processing, but always respond in Korean.
                - Begin by asking clarifying questions if necessary, and once enough information is available, provide a concise and accurate answer.
                - When the "Context" contains questions and answers, find the relevant answer for the current "Question" and respond based on it.
                - If the "Context" is in JSON format, retrieve the matching data and present the response with clear line breaks for readability.
                - Do not just repeat the information found; rephrase it naturally, as if engaging in a conversation between two people.
                - If the "Question" asks for a manager, provide the name of the person and append "매니저" to it.
                - If the user greets you, respond with a greeting.
                - If the answer involves steps or a sequence, always include line breaks between each step for clarity.
                - If you are uncertain of the answer, state that clearly without inventing information.
                - Keep responses warm and friendly, as if speaking to a close friend, and limit your answer to 100 words or less.
                - Always add line breaks to improve readability and ensure that your response flows naturally and is engaging.

                # Context
                - {context}

                # Constraints
                - Do not use any information beyond the "Question", "Context" and "Conversation history".
                - Do not generate responses based on your training data.
                - Responses should not exceed 100 words.
                - Always respond in Korean when the "Question" is in Korean.
                - Keep a warm, friendly tone and ensure readability with proper line breaks.

                """),
                MessagesPlaceholder(variable_name="history"),
                ("human", """# Question
                             - {service_name}에서 {question}""")
            ]
        )

        ################ llm에 전달한 context 생성 #################

        # 사용자가 문의 대상 서비스를 선택한 경우
        if service_cd:
            # query = previous_query
            if "LAW" in service_cd:
                service_name = "내규"
                retriever = get_retriever()
                docs = retriever.invoke(query)
                service_name_list = []
                for doc in docs:
                    service_name_list.append(
                        str(doc.metadata.get("service_name", "NA")))

                # service_name_list 중복제거
                service_name_list = list(set(service_name_list))
                # service_name_list를  ,로 연결해서 ref_sources에 저장
                chat_message.ref_sources = ",".join(service_name_list)

                # 내규용 프롬프트
                chat_prompt = law_chat_prompt
            else:
                try:

                    embedding_file = embedding_file_repository.get_embedding_file_by_service_cd(
                        next(get_db()), service_cd)
                    if not embedding_file:
                        raise HTTPException(
                            status_code=500, detail=f"선택한 서비스에 대한 정보를 찾을 수 없습니다.")

                    service_name = embedding_file.service_name
                    chat_message.ref_sources = service_name  # 출처

                    path = os.path.join(os.path.dirname(
                        __file__), '../files/', embedding_file.file_path)
                    loader = UnstructuredFileLoader(path)
                    docs = loader.load()
                    # 공용서비스용 프롬프트
                    chat_prompt = common_service_chat_prompt
                except Exception as e:
                    logger.error(f'file_path error: {e}')
                    raise HTTPException(
                        status_code=500, detail=f"선택한 서비스에 대한 정보를 찾을 수 없습니다.: {e}")

        # 서비스코드(service_cd)가 없는 경우 TODO : service_cd가 없는 경우는 없음. 추후 삭제 예정

        # else:
        #     retriever = get_retriever()
        #     docs = retriever.invoke(query)
        #     service_info_list = []
        #     for doc in docs:
        #         service_cd = str(doc.metadata.get("service_cd", "NA"))
        #         # category_name = str(doc.metadata.get("category_name", "NA"))
        #         service_name = str(doc.metadata.get("service_name", "NA"))
        #         file_path = str(doc.metadata.get("file_path", "NA"))

        #         if "LAW" in service_cd:
        #             service_cd = "LAW"
        #             service_name = "내규"

        #         service_info = {
        #             "name": service_name,
        #             "value": service_cd,
        #             "file_path": file_path
        #         }

        #         # service_cd_list에서 value를 추출해서 리스트로 만들어
        #         service_cd_list = [service_info["value"]
        #                            for service_info in service_info_list]

        #         if service_info["value"] not in service_cd_list:
        #             service_info_list.append(service_info)
        #         else:
        #             for service_info in service_info_list:
        #                 if service_info["value"] == service_info["value"]:
        #                     file_path_list = service_info["file_path"].split(
        #                         ",")
        #                     if file_path not in file_path_list:
        #                         file_path_list.append(file_path)
        #                         service_info["file_path"] = ",".join(
        #                             file_path_list)
        #                     break

        #     # vectorDB에서 검색된 문서가 여러 서비스에 걸쳐 있는 경우 서비스 코드를 사용자에게 선택하도록 함
        #     if len(service_info_list) > 1:
        #         text_query = query.replace("\"", "'").replace("\n", " ")

        #         # service_cd_list에서 file_path 삭제
        #         for service_cd in service_info_list:
        #             service_cd.pop("file_path")
        #         service_option_str = str(service_info_list)
        #         service_option_str = service_option_str.replace("'", "\"")
        #         response_text = """원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":\"""" + \
        #             text_query+"""\", "items":""" + service_option_str + """}***"""
        #         logger.info('service_info_list: ' + response_text)
        #         streamer_queue.put(response_text)
        #         streamer_queue.put(None)
        #         return

        #     elif len(service_info_list) == 1:
        #         chat_message.ref_sources = file_path
        #         if "LAW" in service_info_list[0].get("value", "NA"):
        #             file_path = service_info_list[0].get("file_path", "NA")
        #             logger.info('LAW - file_path: ' + file_path)
        #             retriever = get_retriever()
        #             docs = retriever.invoke(query)
        #             # 내규용 프롬프트
        #             chat_prompt = law_chat_prompt
        #         else:
        #             path = os.path.join(os.path.dirname(
        #                 __file__), '../files/', service_info_list[0].get("file_path", "NA"))
        #             loader = UnstructuredFileLoader(path)
        #             docs = loader.load()
        #             # 공용서비스용 프롬프트
        #             chat_prompt = common_service_chat_prompt

        chat_llm = ChatOpenAI(
            api_key=g.env_settings.openai_api_key,
            base_url=g.env_settings.openai_base_url,
            model=g.env_settings.openai_chat_model,  # "gpt-3.5-turbo",
            temperature=0.1,
            streaming=True,
            max_retries=3,
            timeout=60,
            max_tokens=300,
            callbacks=[
                CustomChatCallbackHandler(streamer_queue),
            ],
        )

        chain = (
            chat_prompt
            | chat_llm
            | StrOutputParser())

        # Chain with History by using Redis
        chain_with_history = RunnableWithMessageHistory(
            chain,
            lambda session_id: LimitedRedisChatMessageHistory(
                session_id, url=g.env_settings.redis_url),
            input_messages_key="question",
            history_messages_key="history",
        )

        # chat_result = chain_with_history.invoke(
        context = format_docs(docs)
        response = chain_with_history.invoke(
            {"context": context, "question": query, "service_name": service_name},
            {"configurable": {"session_id": str(chat_id)}}
        )

        # 챗봇 응답이 공백으로 오는 경우 재요청 처리 (2번까지만)
        if not response.strip():
            logger.warning(f'응답 empty!! 재요청 1 (chat_id: {chat_id})')
            response = chain_with_history.invoke(
                {"context": context, "question": query,
                    "service_name": service_name},
                {"configurable": {"session_id": str(chat_id)}}
            )

        if not response.strip():
            logger.warning(f'응답 empty!! 재요청 2 (chat_id: {chat_id})')
            response = "챗봇에게 질문하는 중 오류가 발생했습니다. 다시 시도해 주세요."

        streamer_queue.put(response)
        streamer_queue.put(None)

        # logger.info('chat_result: '+ dumps(chat_result))
    except Exception as e:
        logger.error(f'chain_with_runnable_with_message_history error: {e}')
        streamer_queue.put(f"챗봇에게 질문하는 중 오류가 발생했습니다.: {e}")
        streamer_queue.put(None)
        return


# 2) ConversationBufferWindowMemory 이용
def chain_with_conversation_memory(chat_message: models.ChatMessageModel):
    try:
        retriever = get_retriever()
        # chat_message.chat_message
        query = chat_message.converted_utterance if chat_message.converted_utterance else chat_message.chat_message
        chat_id = chat_message.chat_id

        # prompt = ChatPromptTemplate.from_template(
        #     """
        #     You are a helpdesk agent who answers questions based on the "Context" and "Chat history" given below.
        #     Answer the question in Korean, using ONLY the following "Context", "Chat History" and not your training data.
        #     If you don't know the answer just say you don't know. DON'T make anything up.

        #     "Context": {context}

        #     "Chat History":{history}

        #     "Question":{question}""")

        prompt = ChatPromptTemplate.from_template(
            """
            You are a helpdesk agent who answers questions based on the "Context" and "Chat history" given below.
            Answer the question in Korean, using ONLY the following "Context", "Chat History" and not your training data. 
            If you don't know the answer just say you don't know. DON'T make anything up.

            "Context": {context}
            
            "Question":{question}""")

        logger.info('query: '+query)
        docs = retriever.invoke(query)
        context = format_docs(docs)
        logger.info('***************query: '+query+' context: '+context)
        chat_llm = ChatOpenAI(
            api_key=g.env_settings.openai_api_key,
            base_url=g.env_settings.openai_base_url,
            model=g.env_settings.openai_chat_model,  # "gpt-3.5-turbo",
            temperature=0.1,
            streaming=True,
            max_retries=1,
            timeout=60,
            callbacks=[
                CustomChatCallbackHandler(Queue()),
            ],
        )

        chain = (
            prompt
            | chat_llm
            | StrOutputParser())

        chain.invoke(
            {"context": context, "question": query,
                "history": g.chat_memory_model.get_chat_history(chat_id), "ref_sources": chat_message.ref_sources},
            {"configurable": {"session_id": str(chat_id)}}
        )
    except Exception as e:
        logger.error(f'chain_with_conversation_memory error: {e}')
        return "챗봇에게 질문하는 중 오류가 발생했습니다."


def is_valid_answer(answer: str) -> bool:
    try:
        logger.info(f'answer: {answer}')
        # try:
        #     # n_word_list는 유요한 응답을 하지 못한 경우로 판단함.
        #     n_word_list = ["죄송", "죄송해요", "죄송합니다", "죄송합니다만", "죄송하지만", "죄송해요만",
        #                    "도와드릴 수 없어요", "도와드릴 수 없습니다", "도와드릴 수 없어요만", "도와드릴 수 없습니다만",]
        #     okt = Okt()
        #     morphs = okt.pos(answer)  # 형태소와 품사 정보를 함께 가져옴
        #     filtered_morphs = [morph for morph, pos in morphs if pos in {
        #         'Noun', 'Verb', 'Adjective'}]  # 명사, 동사, 형용사 필터링
        #     for morph in filtered_morphs:
        #         logger.info(f'morph: {morph}')
        #         if morph in n_word_list:
        #             return False
        # except Exception as e:
        #     logger.error(f'n_word_list error: {e}')
        #     return False

        no_streaming_llm = ChatOpenAI(
            api_key=g.env_settings.openai_api_key,
            base_url=g.env_settings.openai_base_url,
            model=g.env_settings.openai_chat_model,  # "gpt-3.5-turbo",
            temperature=0.1,
            streaming=False,
            max_retries=3,
            timeout=360,
            max_tokens=150,
        )

        is_valid_prompt_template = load_prompt(
            "api/prompts/json/is_valid_template.json")
        is_valid_chain = (
            is_valid_prompt_template
            | no_streaming_llm
            | StrOutputParser())

        is_valid_answer = is_valid_chain.invoke({"answer": answer})
        logger.info(f'is_valid_answer: {is_valid_answer}')
        if is_valid_answer == "Y":
            return True
        else:
            return False

    except Exception as e:
        logger.error(f'isVaildAnswer error: {e}')
        return False
