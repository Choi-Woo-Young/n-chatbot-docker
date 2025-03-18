from typing import Dict
from fastapi import APIRouter, Depends, FastAPI, HTTPException, Header
from fastapi.responses import StreamingResponse, PlainTextResponse
from sqlalchemy.orm import Session
from api.modules import askBotModule
from api.modules import selfServiceModule, safetyFilterModule
from api.modules import checkUtteranceModule
from api.repositories import chatroom_repository
from api.repositories import embedding_file_repository
from ..config import schemas, models
from ..config.database import SessionLocal, engine
from ..config import models, schemas
from api.config.globals import logger
import api.config.globals as g
from api.config.database import get_db
import html
import bleach
import json

schemas.Base.metadata.create_all(bind=engine)

router = APIRouter(
    prefix="/chatbot",
    tags=["chatbot"]
)

# 챗봇에게 질문


@router.post("/ask")
async def ask_chatbot(chat_message: models.ChatMessageModel, db: Session = Depends(get_db)):
    try:
        logger.info(f'ask_chatbot: {chat_message}')
        chat_message.chat_message = safetyFilterModule.clean(
            chat_message.chat_message)
        chatroom_repository.register_chat_message(db=db, chat_message_model=chat_message)
        chatroom_repository.update_chatroom_service_cd(db=db, chat_id=chat_message.chat_id, service_cd=chat_message.service_cd.replace("!",""))

        # 전체 셀프서비스 목록 제공
        if chat_message.selected_cd == "NICE_ALL_SVC":
            return PlainTextResponse("""원하시는 셀프서비스를 선택해주세요. ***{"type":"row", "previous_query":\""""+chat_message.chat_message.replace("\"", "'")+"""\", "items":[{"name":"내부그룹웨어", "value":"NICE_NGROUPWARE_SVC"},{"name":"외부그룹웨어", "value":"NICE_HGROUPWARE_SVC"},{"name":"내부메일", "value":"NICE_WEBMAIL_SVC"}]}***""")

        # 셀프서비스 초기화 확인
        elif chat_message.selected_cd in ["NICE_NGROUPWARE_SVC", "NICE_HGROUPWARE_SVC", "NICE_WEBMAIL_SVC"]:
            return PlainTextResponse(g.self_service_info[chat_message.selected_cd]+"""서비스 비밀번호를 초기화 하시겠습니까?***{"type":"col", "previous_query":\""""+chat_message.chat_message.replace("\"", "'")+"""\", "items":[{"name":"예", "value":\""""+chat_message.selected_cd+"""_OK\"},{"name":"아니오", "value":"NICE_ALL_SVC"}]}***""")

        # 셀프서비스 실행
        elif chat_message.selected_cd in ["NICE_NGROUPWARE_SVC_OK", "NICE_HGROUPWARE_SVC_OK", "NICE_WEBMAIL_SVC_OK"]:
            chat_message.selected_cd = chat_message.selected_cd.replace(
                "_OK", "")
            return selfServiceModule.reset_password(chat_message.selected_cd, chat_message.user_id, db)

        else:
            # 사용자 발화 체크/분석
            check_result = checkUtteranceModule.check_utterance(
                chat_message.chat_message)
            logger.info(f'check_utterance: {check_result}')
            
            # converted_utterance 는 의문문으로 변환된 발화
            converted_utterance = check_result["converted_utterance"]
            chat_message.converted_utterance = converted_utterance
            
            service_cd = check_result["service_cd"]
            # service_cd 에서 ", ', 공백 제거

            for item in g.service_list:
                if '!' not in chat_message.service_cd and item["value"] in service_cd:
                    service_cd = item["value"]
                    chat_message.service_cd = item["value"]
                    chatroom_repository.update_chatroom_service_cd(db=db, chat_id=chat_message.chat_id, service_cd=chat_message.service_cd)
                    break
            print(f'chat_message after check_utterance : {chat_message}')

            chat_message.service_cd = chat_message.service_cd.replace("!","")
            # 서비스 코드가 없는 경우
            if chat_message.service_cd.replace(" ", "") == "" and "N/A" in service_cd:
                choices = {"type": "row", "previous_query": chat_message.chat_message.replace(
                    "\"", "'"), "items": []}
                choices["items"] = g.service_list
                # JSON 문자열로 변환하되 이스케이프 문자 제거
                choices_str = json.dumps(choices, ensure_ascii=False)
                return PlainTextResponse(f"원하시는 서비스를 선택해주세요. ***{choices_str}***")
                # 원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"알리미 설치 방법을 알려드릴까요?", "items":[{"name": "NICE플래닛", "value": "COM_planet.txt"}, {"name": "관제", "value": "COM_totalmon.txt"}]}***

            else:
                # 셀프서비스관련 문의인지 판단
                self_service_info = selfServiceModule.check_self_service(
                    chat_message)

                # 셀프서비스관련 문의가 아닌경우,
                if self_service_info["self_service_yn"] != "Y" or self_service_info["self_service_cd"] == "NA":
                    return askBotModule.chat_with_bot(chat_message)

                # 셀프서비스관련 문의인 경우
                else:
                    return PlainTextResponse(g.self_service_info[self_service_info["self_service_cd"]]+"""서비스 비밀번호를 초기화 하시겠습니까?***{"type":"col", "previous_query":\""""+chat_message.chat_message.replace("\"", "'")+"""\", "items":[{"name":"예", "value":\""""+self_service_info["self_service_cd"]+"""_OK\"},{"name":"아니오", "value":"NICE_ALL_SVC"}]}***""")

    except Exception as e:
        logger.error(f'ask_chatbot error: {e}')
        return PlainTextResponse("챗봇에게 질문하는 중 오류가 발생했습니다.")
