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


# TODO 코드 투어 - [봇과채팅](백엔드) 160. **일반 챗봇 응답
def chat_with_bot(chat_message: models.ChatMessageModel):
    
    # async 응답을 streaming 응답으로 변환
    return StreamingResponse(response_generator(chat_message, Queue()), media_type='text/event-stream')

# TODO 코드 투어 - [봇과채팅](백엔드) 170. 비동기 챗봇 응답
async def response_generator(chat_message: models.ChatMessageModel, streamer_queue: Queue):
    try:
        response_text = ""
        # 챗봇 응답 생성
        start_generation(chat_message, streamer_queue)

        # 무한 루프를 돌며 streamer_queue에서 값을 꺼내 챗봇 응답을 생성
        while True:
            value = streamer_queue.get()
            if value == None:
                # 유효한 응답이고 출처가 존재하는 경우 답변에 출처 추가 >>
                if is_valid_answer(response_text) and chat_message.ref_sources and chat_message.ref_sources != "":
                    ref_source = chat_message.ref_sources
                    yield "\n[출처:"+ref_source+"]"
                    
                    response_text = response_text + "\n[출처:"+ref_source+"]"
                    
                    chat_message.ref_sources = "" # 출처 초기화
                    
                    # 대화 내용 메모리에 저장 (ConversationBufferWindowMemory) >>
                    g.chat_memory_model.save_context(chat_message.chat_id, 
                                                     {"input": chat_message.chat_message}, {"output": response_text})

                break
            # Else yield the value
            response_text = response_text + value
            
            yield value
            
            # 큐 작업 완료 신호 전송
            streamer_queue.task_done()
            
            await asyncio.sleep(0.1)
    except Exception as e:
        logger.error(f'response_generator error: {e}')
        yield "챗봇에게 질문하는 중 오류가 발생했습니다."
        streamer_queue.task_done()


# TODO 코드 투어 - [봇과채팅](백엔드) 180. 챗봇 응답 생성 시작
def start_generation(chat_message: models.ChatMessageModel, streamer_queue: Queue):
    # 챗봇 응답 생성 스레드 시작(동시 여러 사용자가 챗봇 이용하는 경우를 위해 동시성 처리)
    thread = Thread(target=generate, kwargs={"chat_message": chat_message, "streamer_queue": streamer_queue})
    thread.start()

# TODO 코드 투어 - [봇과채팅](백엔드) 210. 챗봇 응답 생성 스레드 시작
def generate(chat_message: models.ChatMessageModel, streamer_queue: Queue):

    chain_with_runnable_with_message_history(chat_message, streamer_queue)

# TODO 코드 투어 - [봇과채팅](백엔드) 220. 챗봇 응답 생성(RunnableWithMessageHistory를 이용)
# [keyword] RunnableWithMessageHistory
def chain_with_runnable_with_message_history(chat_message: models.ChatMessageModel, streamer_queue: Queue):
    try:
        # chat_message.converted_utterance기 없으면 chat_message.chat_message를 query에 넣음
        chat_message.ref_sources = "" #출처는 마지막에 추가되므로 초기화
        
        chat_id = chat_message.chat_id # 채팅 아이디
        selected_cd = chat_message.selected_cd # 선택된 서비스 코드(선택형 답변의 경우)
        service_cd = chat_message.service_cd # 서비스 코드
        query = chat_message.chat_message # 사용자 질문(발화)
        previous_query = chat_message.previous_query # 이전 질문

        # 선택형 답변의 경우 이전 질문을 사용
        if selected_cd != "" and selected_cd == service_cd:
            query = previous_query
        
     
        # 내규용 프롬프트
        law_chat_prompt = ChatPromptTemplate.from_messages(
            [
                ("system", """You are a friendly AI assistant that answers questions in Korean. Use only the provided context and conversation history—do not use your training data.

                - Ask any clarifying questions if needed. Once you have enough information, give a specific and concise answer.
                - If you don't know the answer, just say so. Do not make up any information.
                - Keep your response under 200 words.
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

        # 공용서비스용 프롬프트
        common_service_chat_prompt = ChatPromptTemplate.from_messages(
            [
                ("system", """
                # Role
                You are a highly skilled AI assistant specializing in answering questions based on provided context. 
                Use only the given information without relying on external knowledge or your training data.

                # Instructions
                - Use the chat history and the latest user question to reformulate the question as a standalone query, if necessary.
                - If the question is in Korean, process it in English but always respond in Korean.
                - When the context includes questions and answers, find the relevant answer and provide it.
                - If the context is in JSON format, extract the relevant data and respond with clear line breaks for readability.
                - If the answer involves steps, use line breaks between each step for clarity.
                - If uncertain of the answer, clearly state that you don’t know.
                - Keep your responses warm and friendly, and limit them to 200 words or less.
                
                # Context
                - {context}

                # Constraints
                - Only use information from the "Question", "Context", and "Conversation history."
                - Do not generate responses based on your training data.
                - Responses should not exceed 100 words and should always include line breaks for readability.
                """),
                MessagesPlaceholder(variable_name="history"),
                ("human", "{service_name} asks: {question}")
            ]
        )

        ################ llm에 전달한 context 생성 #################
        
        
        # 초기화
        service_name = ""
        chat_prompt = None
        if service_cd:
            # 내규 서비스인 경우
            if "LAW" in service_cd:
                service_name = "내규"
                retriever = get_retriever()
                # vectorDB에서 검색
                docs = retriever.invoke(query)
                
                # 응답 출처 정보 추출
                service_name_list = []
                for doc in docs:
                    service_name_list.append(
                        str(doc.metadata.get("service_name", "NA")))
                service_name_list = list(set(service_name_list))
                chat_message.ref_sources = ",".join(service_name_list)

                # 내규용 프롬프트
                chat_prompt = law_chat_prompt
            
            # 공용서비스인 경우
            else:
                try:
                    # DB embedding_file 테이블에서 서비스 코드에 해당하는 문서 파일 정보 조회
                    embedding_file = embedding_file_repository.get_embedding_file_by_service_cd(next(get_db()), service_cd)
                    if not embedding_file:
                        raise HTTPException(
                            status_code=500, detail=f"선택한 서비스에 대한 정보를 찾을 수 없습니다.")
                    service_name = embedding_file.service_name
                    path = os.path.join(os.path.dirname(__file__), '..','files', embedding_file.file_path)
                    loader = UnstructuredFileLoader(path)
                    docs = loader.load()
                    
                    # 공용서비스용 프롬프트
                    chat_prompt = common_service_chat_prompt
                except Exception as e:
                    logger.error(f'file_path error: {e}')
                    raise HTTPException(
                        status_code=500, detail=f"선택한 서비스에 대한 정보를 찾을 수 없습니다.: {e}")

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
                #챗봇 응답을 실시간으로 큐에 넣는 콜백 핸들러
                CustomChatCallbackHandler(streamer_queue),
            ],
        )

        chain = (
            chat_prompt
            | chat_llm
            | StrOutputParser())

        # redis 채팅 메모리 사용
        # [keyword] RunnableWithMessageHistory, LimitedRedisChatMessageHistory
        chain_with_history = RunnableWithMessageHistory(
            chain,
            lambda session_id: LimitedRedisChatMessageHistory(session_id, url=g.env_settings.redis_url),
            input_messages_key="question",
            history_messages_key="history",
        )

        context = format_docs(docs)
        
        # 챗봇 응답 생성(호출)
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

        # 챗봇 응답 마지막 처리
        streamer_queue.put(response)
        streamer_queue.put(None)

        # logger.info('chat_result: '+ dumps(chat_result))
    except Exception as e:
        logger.error(f'chain_with_runnable_with_message_history error: {e}')
        streamer_queue.put(f"챗봇에게 질문하는 중 오류가 발생했습니다.: {e}")
        streamer_queue.put(None)
        return


# TODO 코드 투어 - [봇과채팅](백엔드) 190. 챗봇 응답 유효성 검사
def is_valid_answer(answer: str) -> bool:
    try:
        logger.info(f'answer: {answer}')
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

def format_docs(docs):
    return "\n\n".join(document.page_content for document in docs)