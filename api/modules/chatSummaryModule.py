from fastapi import Depends
from api.config.globals import logger
import api.config.globals as g
from api.repositories import chatroom_repository
from sqlalchemy.orm import Session
from ..config import schemas, models
from api.config.database import get_db
from api.modules.retrieverModule import get_retriever
from threading import Thread
from langchain_community.chat_models import ChatOllama
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.runnables import RunnableLambda, RunnablePassthrough
from langchain_openai import ChatOpenAI
from langchain.prompts import load_prompt
from langchain_core.output_parsers import StrOutputParser
from langchain_core.runnables.base import RunnableParallel, RunnableLambda 

def thread_chat_summary(chat_id: int):
    thread = Thread(target=chat_summary, kwargs={"chat_id": chat_id})
    # Starting the thread
    thread.start()


def chat_summary(chat_id: int):
    try:
        logger.info(f'chat_summary: {chat_id}')
        db = next(get_db())
        result_chatroom = chatroom_repository.get_chatroom(db=db, chat_id=chat_id)
        if result_chatroom == None or result_chatroom.state_cd not in ["CRSTT010", "CRSTT040"]: #봇과채팅중, 지원중
            return
        result_chat_message_model_list = chatroom_repository.get_chat_message_list(db, chat_id)
        
        #result_chat_message_model_list을 chat_msg_id 기준으로 내림차순 정렬해서 최신 15개만 추출
        result_chat_message_model_list = sorted(result_chat_message_model_list, key=lambda x: x.chat_msg_id, reverse=True)[:15]
        
        if len(result_chat_message_model_list) < 2:
            return
        
        chat_messages_data = "\n\n".join([("사용자" if chat_message.user_role_cd=="USR" else "챗봇" )+" :"+chat_message.chat_message for chat_message in result_chat_message_model_list])
        logger.info(f'chat_messages_data: {chat_messages_data}')

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
        
        #chat_summary_prompt_template = load_prompt("api/prompts/json/chat_summary_prompt.json")
        extract_chat_title_prompt_template = load_prompt("api/prompts/json/extract_chat_title_prompt.json")
        extract_chat_title_chain = (
                extract_chat_title_prompt_template 
                | no_streaming_llm
                | StrOutputParser())
        
        chat_context_summary_prompt_template = load_prompt("api/prompts/json/chat_context_summary_prompt.json")
        chat_context_summary_chain = (
                chat_context_summary_prompt_template 
                | no_streaming_llm
                | StrOutputParser())
        
        extract_chat_tags_prompt_template = load_prompt("api/prompts/json/xtract_chat_tags_prompt.json")
        extract_chat_tags_chain = (
                extract_chat_tags_prompt_template 
                | no_streaming_llm
                | StrOutputParser())
        
    
        final_chain = (
            RunnableParallel({"title": extract_chat_title_chain,  "summary": chat_context_summary_chain, "tags" : extract_chat_tags_chain})
            )

        summary_dict = final_chain.invoke({"context": chat_messages_data})
        logger.info(f'summary_dict: {summary_dict}')

        title_text = summary_dict.get("title").replace("\"", "").strip()
        summary_text = summary_dict.get("summary").replace("\"", "").strip()
        hashtag_text = summary_dict.get("tags").replace("\"", "").strip()

        # 추출한 제목, 내용, hashtag를을 채팅방 데이터에 업데이트
        chatroom_repository.update_chatroom(db, models.ChatRoomModel(chat_id=chat_id, chat_title=title_text, chat_content=summary_text, hashtag=hashtag_text))    
    except Exception as e:
        logger.error(f'chat_summary: {e}')
    finally:
        db.close()
