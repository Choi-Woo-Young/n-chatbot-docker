# 표준 라이브러리
import json
from typing import Dict

# 외부 라이브러리
from fastapi import APIRouter, Depends
from fastapi.responses import PlainTextResponse
from sqlalchemy.orm import Session

# 로컬 모듈
from api.config import constants
from api.config.database import get_db
from api.config.globals import logger
import api.config.globals as g
from api.modules import (
    askBotModule,
    checkUtteranceModule,
    safetyFilterModule,
    selfServiceModule
)
from api.repositories import chatroom_repository
from ..config import models, schemas
from ..config.database import engine

# 데이터베이스 테이블 생성
schemas.Base.metadata.create_all(bind=engine)

router = APIRouter(
    prefix="/chatbot",
    tags=["chatbot"]
)

# --- Helper Functions ---

def create_plain_text_response(message: str, choices: Dict | None = None) -> PlainTextResponse:
    """Helper function to create PlainTextResponse with optional choices."""
    if choices:
        choices_str = json.dumps(choices, ensure_ascii=False)
        return PlainTextResponse(f"{message} ***{choices_str}***")
    return PlainTextResponse(message)

def create_choice_button(name: str, value: str) -> Dict:
    """Helper function to create a choice button dictionary."""
    return {"name": name, "value": value}

def create_choices_payload(previous_query: str, choice_type: str, items: list) -> Dict:
    """Helper function to create the choices payload dictionary."""
    return {"type": choice_type, "previous_query": previous_query.replace('"', "'"), "items": items}

# --- Private Helper Functions for ask_chatbot Logic ---

# TODO 코드 투어 - [LLM챗] 110. selected_cd 기반 셀프 서비스 처리 및 응답
def _handle_self_service_flow(selected_cd: str, user_message: str, user_id: str, db: Session):
    """Handles the self-service flow based on selected_cd."""
    
    # 전체 셀프서비스 목록 응답
    if selected_cd == constants.ServiceCode.ALL:
        choices = create_choices_payload(
            user_message, "row",
            [
                create_choice_button("내부그룹웨어", constants.ServiceCode.INTERNAL_GROUPWARE),
                create_choice_button("외부그룹웨어", constants.ServiceCode.EXTERNAL_GROUPWARE),
                create_choice_button("내부메일", constants.ServiceCode.WEBMAIL),
            ]
        )
        return create_plain_text_response("원하시는 셀프서비스를 선택해주세요.", choices)

    # 셀프서비스 초기화 확인
    elif selected_cd in constants.SELF_SERVICE_CODES:
        confirmation_message = g.self_service_info[selected_cd] + " 서비스 비밀번호를 초기화 하시겠습니까?"
        choices = create_choices_payload(
            user_message, "col",
            [
                create_choice_button("예", f"{selected_cd}{constants.SelfServiceSuffix.OK}"),
                create_choice_button("아니오", constants.ServiceCode.ALL),
            ]
        )
        return create_plain_text_response(confirmation_message, choices)

    # 셀프서비스 실행
    elif selected_cd in constants.SELF_SERVICE_OK_CODES:
        target_service = selected_cd.replace(constants.SelfServiceSuffix.OK, "")
        return selfServiceModule.reset_password(target_service, user_id, db)

    return None # Not a self-service flow handled by selected_cd

# TODO 코드 투어 - [LLM챗] 140. 현재 맥락과 발화 기반으로 service_cd 결정
def _determine_service_code(current_service_cd: str, checked_service_cd: str, chat_id: int, db: Session):
    final_service_cd = current_service_cd
    
    # 현재 서비스 코드가 사용자에 의해 강제 지정(!)되지 않은 경우
    if '!' not in current_service_cd: 
        for item in g.service_list:
            # 사용자 발화 체크/분석 결과에서 서비스 코드가 존재하는 경우, chatroom의 service_cd를 해당 서비스 코드로 업데이트
            if item["value"] in checked_service_cd:
                final_service_cd = item["value"]
                chatroom_repository.update_chatroom_service_cd(db=db, chat_id=chat_id, service_cd=final_service_cd)
                break
    return final_service_cd


# TODO 코드 투어 - [LLM챗] 120. 사용자 발화 기반 처리(selected_cd가 없는 경우)
def _handle_utterance_based_flow(chat_message: models.ChatMessageModel, db: Session):
    
    # 사용자 발화
    user_message = chat_message.chat_message

    # 사용자 발화 체크/분석  - 응답 포멧 : {"service_cd": "서비스 코드","converted_utterance": "변환된 발화"} >>
    check_result = checkUtteranceModule.check_utterance(user_message)
    logger.info(f'check_utterance: {check_result}')
    chat_message.converted_utterance = check_result["converted_utterance"]
    checked_service_cd = check_result["service_cd"]

    # 서비스 코드 결정 및 업데이트 - 응답 포멧 : {"service_cd": "서비스 코드"} >>
    service_cd = _determine_service_code(chat_message.service_cd, checked_service_cd, chat_message.chat_id, db)
    chat_message.service_cd = service_cd # Update chat_message object for subsequent logic
    print(f'chat_message after check_utterance and service code determination: {chat_message}')

    # 서비스 코드가 결정되지 않은 경우: 서비스 선택 요청
    if not service_cd and "N/A" in checked_service_cd:
        # 서비스 선택 요청 응답 생성 
        choices = create_choices_payload(user_message, "row", g.service_list)
        return create_plain_text_response("원하시는 서비스를 선택해주세요.", choices)

    # 4. 서비스 코드가 결정된 경우: 셀프서비스 문의 확인 또는 일반 문의 처리
    else:
        # 셀프서비스관련 문의인지 판단 - 응답 포멧 : {"self_service_yn": "Y/N", "self_service_cd": "서비스 코드"} >>
        self_service_info = selfServiceModule.check_self_service(chat_message)

        # 셀프서비스관련 문의가 아니거나, 해당 서비스가 없는 경우 -> 일반 챗봇 응답
        if self_service_info["self_service_yn"] != "Y" or self_service_info["self_service_cd"] == "NA":
            
            return askBotModule.chat_with_bot(chat_message)

        # 셀프서비스 관련 문의인 경우 -> 비밀번호 초기화 확인 답변 응답
        else:
            self_service_cd = self_service_info["self_service_cd"]
            confirmation_message = g.self_service_info[self_service_cd] + " 서비스 비밀번호를 초기화 하시겠습니까?"
            choices = create_choices_payload(
                user_message, "col",
                [
                    create_choice_button("예", f"{self_service_cd}{constants.SelfServiceSuffix.OK}"),
                    create_choice_button("아니오", constants.ServiceCode.ALL),
                ]
            )
            return create_plain_text_response(confirmation_message, choices)

# --- Main Endpoint ---
#TODO 코드 투어 - [LLM챗] 100. 챗봇에게 질문([POST]/chatbot/ask)
# [keyword] controller
@router.post("/ask")
async def ask_chatbot(chat_message: models.ChatMessageModel, db: Session = Depends(get_db)):
    try:
        logger.info(f'ask_chatbot request: {chat_message}')

        # 입력 메시지 정제
        cleaned_message = safetyFilterModule.clean(chat_message.chat_message)
        if not cleaned_message:
            return create_plain_text_response("메시지 내용이 없습니다.")
        chat_message.chat_message = cleaned_message

        # chat message 등록
        chatroom_repository.register_chat_message(db=db, chat_message_model=chat_message)
        
        # chatroom 테이블의 service_cd 업데이트
        if chat_message.service_cd:
            chat_message.service_cd = chat_message.service_cd.replace("!", "")
            chatroom_repository.update_chatroom_service_cd(db=db, chat_id=chat_message.chat_id, service_cd=chat_message.service_cd)
            
        # selected_cd 기반 셀프 서비스 처리 및 응답 >>
        selected_cd_response = _handle_self_service_flow(chat_message.selected_cd, chat_message.chat_message, chat_message.user_id, db)
        
        if selected_cd_response:
            return selected_cd_response

        # selected_cd가 없는 경우, 사용자 발화 기반 처리 >>
        return _handle_utterance_based_flow(chat_message, db)

    except Exception as e:
        logger.error(f'ask_chatbot error: {e}', exc_info=True)
        return create_plain_text_response("챗봇 서비스 처리 중 오류가 발생했습니다. 잠시 후 다시 시도해주세요.")
