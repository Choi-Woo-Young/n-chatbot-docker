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


def thread_check_utterance(chat_message: str):
    thread = Thread(target=check_utterance, kwargs={
                    "chat_message": chat_message})
    thread.start()


def check_utterance(chat_message: str) -> dict:
    try:
        logger.info(f'check_utterance: {chat_message}')

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

        # service_cd 추출
        extract_service_cd_prompt_template = load_prompt(
            "api/prompts/json/extract_service_cd_prompt.json")
        extract_service_cd_chain = (
            extract_service_cd_prompt_template
            | no_streaming_llm
            | StrOutputParser())

        # 발화를 의문문으로 변환(발화에서 의도 파악이 어려워 의문문으로 변환이 어려운 경우 의도 파악을 위해 되묻기)
        convert_utterance_into_question_prompt_template = load_prompt(
            "api/prompts/json/convert_utterance_into_question_prompt.json")
        convert_utterance_into_question_chain = (
            convert_utterance_into_question_prompt_template
            | no_streaming_llm
            | StrOutputParser())

        final_chain = (
            RunnableParallel({"service_cd": extract_service_cd_chain,
                             "converted_utterance": convert_utterance_into_question_chain})
        )

        service_cd_list= ""
        
        #g.service_list에서 service_cd만 뽑아서 리스트 생성
        for service in g.service_list:
            service_cd_list += service['value'] + """\n or \n"""
        
        logger.info(f'service_cd_list: {service_cd_list}')  

        result_dict = final_chain.invoke({"utterance": chat_message, "service_list": str(g.service_desc_list), "service_cd_list":service_cd_list})
        logger.info(f'result_dict: {result_dict}')

        # service_cd_text = result_dict.get("service_cd").replace("\"", "").strip()
        # converted_utterance_text = result_dict.get("converted_utterance").replace("\"", "").strip()
        return result_dict

    except Exception as e:
        logger.error(f'chat_summary: {e}')
