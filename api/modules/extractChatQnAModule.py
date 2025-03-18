from fastapi import Depends, HTTPException
from api.config.globals import logger
import api.config.globals as g
from api.repositories import chatroom_repository
from api.repositories import qna_repository
from sqlalchemy.orm import Session
from ..config import schemas, models
from api.config.database import get_db
from api.modules.retrieverModule import get_retriever
from threading import Thread
from langchain_community.chat_models import ChatOllama
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.runnables import RunnableLambda, RunnablePassthrough

# 채팅 메시지에서 사용자의 질문과 답변 추출


def thread_extract_chat_qna(chat_id: int):
    thread = Thread(target=extract_chat_qna, kwargs={"chat_id": chat_id})
    thread.start()


async def extract_chat_qna(chat_id: int):
    try:
        logger.info(f'chat_summary: {chat_id}')
        # 대화 메시지 텍스트 추출
        db = next(get_db())
        result_chat_message_model_list = chatroom_repository.get_chat_message_list(db, chat_id)
        chat_messages_data = "\n\n".join(
            [str(chat_message.user_id)+"("+chat_message.user_role_cd+") :"+chat_message.chat_message
             for chat_message in result_chat_message_model_list])
        logger.info(f'chat_messages_data: {chat_messages_data}')

        # 대화 내역에서 질문, 답변 추출
        llm = ChatOllama(
            model="mistral:latest",
            temperature=0.1,
        )

        prompt = ChatPromptTemplate.from_template(
            """다음 대화에서 가장 핵심적인 사용자의'질문'과 해당 질문에 대한 '답변'을 요약 및 추출하세요. 
            '질문'은 의문문으로 작성해주세요. 예) "어떻게 비밀번호를 초기화하나요?"
            '답변'은 해당 질문에 대한 답변으로 작성해주세요. 예) "비밀번호 초기화는 다음과 같이 진행하시면 됩니다."
            '질문'과 '답변'은 "/"로 구분하고, 각 '질문'과 '답변' 쌍은 '###'로 구분해서 반드시 아래 응답 양식에 맞게 작성해주세요. 
            '/'와 '###'는 구분자로만 사용하세요.

            대화 문맥: {context}
            
            응답 양식: ###동호회를 해산시킬 수 있어?/예 가능합니다.
                     ###어떻게 비밀번호를 초기화하나요?/비밀번호 초기화는 다음과 같이 진행하시면 됩니다.
            """
        )

        chain = (
            prompt
            | llm
        )
        response = chain.invoke({"context": chat_messages_data})

        qna = response.content.strip().lstrip("###")
        logger.info(f'qna: {qna}')
        qna_list = qna.split("###")

        chatroom_model = chatroom_repository.get_chatroom(db=db, chat_id=chat_id)
        for qna_pair in qna_list:
            qna_pair = qna_pair.split("/")
            question_text = qna_pair[0].strip()
            answer_text = qna_pair[1].strip()
            logger.info(f'question_text: {question_text}')
            logger.info(f'answer_text: {answer_text}')

            # QnA테이블에 추출한 question, answer 등록
            qna_model = models.QnaModel(
                chat_group_id=chatroom_model.chat_group_id,
                user_id=chatroom_model.user_id,
                #ref_service_cd=g.REF_SERVICE_CD,
                question=question_text,
                answer=answer_text
            )
            qna_repository.register_qna(db, qna_model)

        return qna
    except Exception as e:
        logger.error(f'extract_chat_qna: {e}')
        raise HTTPException(status_code=500, detail=str(e))
    finally:
        db.close()
