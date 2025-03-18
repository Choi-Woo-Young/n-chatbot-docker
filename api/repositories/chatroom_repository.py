# import logging
from fastapi import HTTPException
import api.config.globals as g
from typing import List, Optional
from sqlalchemy.orm import Session, joinedload, aliased
from api.repositories import chatroom_user_repository
from api.repositories import unread_chat_message_repository
from api.repositories import user_repository
from ..config.schemas import ChatMessage, Chatroom, ChatroomUser, User, UnreadChatMessage
from ..config import models, schemas
from sqlalchemy import case, func, or_, and_, distinct, select
from api.modules import chatSummaryModule
from api.modules import extractChatQnAModule
from api.config.globals import logger
from datetime import datetime, timedelta
from zoneinfo import ZoneInfo
from ..modules import nTalkModule
from typing import Union

# chatroom 등록


def register_chatroom(db: Session, chatroom_model: models.ChatRoomModel) -> models.ChatRoomModel:
    try:
        print('register_chatroom - chatroom : ' +
              chatroom_model.model_dump_json())
        result_chatroom_model = models.ChatRoomModel()
        # 봇과의 채팅방 만드는 경우
        if chatroom_model.with_bot_yn == True:
            chatroom_schema = chatroom_model.model_dump_schema()
            db.add(chatroom_schema)
            db.commit()
            update_chat_group_id(
                db, chatroom_schema.chat_id, chatroom_schema.chat_id)

            # 채팅방 사용자 정보 생성
            register_chatroom_user_list = []
            # 봇 정보 생성
            bot_user = models.ChatRoomUserModel()
            bot_user.chat_id = chatroom_schema.chat_id
            bot_user.user_id = 0
            bot_user.user_role_cd = 'BOT'
            bot_user.chat_user_state_cd = 'CHAT'
            bot_user.delete_yn = False
            register_chatroom_user_list.append(bot_user)
            # 지원 대상자 정보 생성
            user = models.ChatRoomUserModel()
            user.chat_id = chatroom_schema.chat_id
            user.user_id = chatroom_model.user_id
            user.user_role_cd = 'USER'
            user.chat_user_state_cd = 'CHAT'
            user.delete_yn = False
            register_chatroom_user_list.append(user)

            # 채팅방 사용자 정보 생성
            for chatroom_user in register_chatroom_user_list:
                chatroom_user_schema = chatroom_user.model_dump_schema()
                db.add(chatroom_user_schema)
                db.commit()

            db.flush()

            # logger.info('chatroom_schema: '+chatroom_schema.__repr__())
            result_chatroom_model = models.ChatRoomModel.model_validate(
                chatroom_schema)
            # logger.info('result_chatroom_model : ' + result_chatroom_model.model_dump_json())

            # 봇과 처음 대화하는 경우 챗봇 자기소개 메시지 등록
            chat_message_model = models.ChatMessageModel()
            chat_message_model.chat_id = chatroom_schema.chat_id
            chat_message_model.user_id = 0
            chat_message_model.user_role_cd = 'BOT'
            chat_message_model.chat_message = """안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?\n참고로, 챗봇과 대화창에 '#' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다."""
            register_chat_message(db, chat_message_model)

        # 사용자간 채팅방 만드는 경우
        else:
            # 기존 채팅방 정보 조회
            ref_chatroom_model = update_chatroom_state(
                db, chatroom_model.ref_chat_id, 'CRSTT020')  # 이관종료
            print('ref_chatroom_model : '+ref_chatroom_model.model_dump_json())
            # 등록할 채팅방 정보 생성
            chatroom_model.chat_group_id = ref_chatroom_model.chat_group_id
            chatroom_model.chat_title = ref_chatroom_model.chat_title
            chatroom_model.chat_content = ref_chatroom_model.chat_content
            chatroom_model.hashtag = ref_chatroom_model.hashtag

            # 채팅방 등록
            chatroom_schema = chatroom_model.model_dump_schema()
            db.add(chatroom_schema)
            db.commit()
            db.flush()

            print('(new!) chatroom_id: '+str(chatroom_schema.chat_id))

            # chatroom_user - 기존 채팅방 사용자 상태(종료) 업데이트, 신규 채팅방 사용자 추가
            chatroom_user_repository.update_chatroom_user_state_cd(
                db, ref_chatroom_model.chat_id, None, "END")
            chatroom_user_repository.add_chatroom_user(
                db, chatroom_schema.chat_id, chatroom_model.user_id, "USER")
            result_chatroom_model = models.ChatRoomModel.model_validate(
                chatroom_schema)
        return result_chatroom_model
    except Exception as e:
        logger.error("Error adding chatroom: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))

# 채팅방 단건 조회


def get_chatroom(db: Session, chat_id: int, user_id: Optional[int] = None) -> models.ChatRoomModel:
    try:
        chatroom_schema = db.query(Chatroom).where(
            Chatroom.chat_id == chat_id).first()
        user_nm = None

        conditions = []
        conditions.append(UnreadChatMessage.chat_id == chat_id)
        if user_id:
            conditions.append(UnreadChatMessage.user_id == user_id)
            if chatroom_schema.state_cd == 'CRSTT040':  # 지원중인 채팅방은 채팅상대명 조회
                if chatroom_schema.user_id == user_id:
                    user_nm = db.query(User.user_nm).where(
                        User.user_id == chatroom_schema.mgr_user_id).first()
                else:
                    user_nm = db.query(User.user_nm).where(
                        User.user_id == chatroom_schema.user_id).first()

        unread_count = db.query(UnreadChatMessage).filter(
            and_(*conditions)).count()

        # 최근 메시지 수신 시간 조회
        latest_message_time = db.query(func.max(ChatMessage.created_time)).filter(
            ChatMessage.chat_id == chat_id).first()

        # 채팅방 참여자 조회
        chatroom_user_schema_list = db.query(ChatroomUser).where(
            ChatroomUser.chat_id == chat_id).all()
        chatroom_user_id_list = [
            chatroom_user.user_id for chatroom_user in chatroom_user_schema_list]

        db.flush()
        if chatroom_schema == None:
            return None
        model = models.ChatRoomModel.model_validate(chatroom_schema)
        model.unread_count = unread_count
        model.latest_message_time = latest_message_time[0] if latest_message_time[
            0] is not None else chatroom_schema.last_modified_time
        model.user_nm = user_nm[0] if user_nm else None
        model.chatroom_user_id_list = chatroom_user_id_list
        return model
    except Exception as e:
        logger.error("Error get_chatroom: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))


# 채팅방 목록 조회
def get_chatroom_list(db: Session, user_id: int, state_cd_list: List[str], search_keyword: str) -> List[models.ChatRoomModel]:
    try:
        # 1. 조건에 맞는 chatroom 조회
        subquery1 = (
            db.query(Chatroom.chat_id)
            .filter(
                Chatroom.delete_yn.isnot(True),
                Chatroom.user_id == user_id,
                Chatroom.state_cd.in_(
                    state_cd_list) if state_cd_list else True,
                or_(
                    Chatroom.chat_title.ilike('%' + search_keyword + '%'),
                    Chatroom.chat_content.ilike('%' + search_keyword + '%'),
                    Chatroom.hashtag.ilike('%' + search_keyword + '%')
                ) if search_keyword else True
            )
            .subquery()
        )

        # 2. 조회한 chatroom의 chat_id로 chat_message에서 가장 최근 메시지를 찾는 서브쿼리
        subquery2 = (
            db.query(
                ChatMessage.chat_id,
                func.max(ChatMessage.created_time).label('latest_message_time')
            )
            .filter(ChatMessage.chat_id.in_(subquery1))
            .group_by(ChatMessage.chat_id)
            .subquery()
        )

        # 3. 안읽은 메시지 카운트를 조회하는 서브쿼리
        subquery3 = (
            db.query(
                UnreadChatMessage.chat_id,
                func.count().label('unread_count')
            )
            .filter(UnreadChatMessage.user_id == user_id)
            .group_by(UnreadChatMessage.chat_id)
            .subquery()
        )

        # 최종 쿼리
        query = (
            db.query(
                Chatroom,
                func.coalesce(subquery2.c.latest_message_time, Chatroom.last_modified_time).label(
                    'latest_message_time'),
                subquery3.c.unread_count,
                User.user_nm,
            )
            .outerjoin(subquery2, Chatroom.chat_id == subquery2.c.chat_id)
            .outerjoin(subquery3, Chatroom.chat_id == subquery3.c.chat_id)
            .outerjoin(User, Chatroom.mgr_user_id == User.user_id)  # 담당자명 조회
            .filter(Chatroom.chat_id.in_(subquery1))
            .order_by(
                func.coalesce(subquery2.c.latest_message_time,
                              Chatroom.last_modified_time).desc(),     # 수신메시지 최신 순서대로
                subquery2.c.latest_message_time.is_(None),  # 수신메시지가 없을 경우
                Chatroom.chat_id.desc())                    # 나중에 문의한 순서대로
        )

        chatroom_schema_list = query.all()
        result_chatroom_model_list = []
        for chatroom_schema, latest_message_time, unread_count, user_nm in chatroom_schema_list:
            #logger.info('chatroom_schema : '+str(chatroom_schema))
            model = models.ChatRoomModel.model_validate(chatroom_schema)
            model.latest_message_time = latest_message_time
            model.unread_count = unread_count
            model.user_nm = user_nm
            result_chatroom_model_list.append(model)
        db.flush()
        return result_chatroom_model_list
    except Exception as e:
        logger.error("Error get_chatroom_list: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))


# SUPPORT 채팅방 목록 조회
def get_support_chatroom_list(db: Session, user_id: int, state_cd_list: List[str], search_keyword: str) -> List[models.ChatRoomModel]:
    try:

        # 유저 조회
        user_model = user_repository.get_user_by_user_id(db, user_id)

        # 1. 조건에 맞는 chatroom 조회
        subquery1 = (
            db.query(Chatroom.chat_id)
            .filter(
                Chatroom.delete_yn.isnot(True),
                Chatroom.user_id != user_id,
                or_(
                    Chatroom.mgr_user_id == None,
                    Chatroom.mgr_user_id == user_id
                ) if user_model.role_cd == 'HELP' else Chatroom.mgr_user_id == user_id,
                Chatroom.state_cd.in_(
                    state_cd_list) if state_cd_list else True,
                or_(
                    Chatroom.chat_title.ilike('%' + search_keyword + '%'),
                    Chatroom.chat_content.ilike('%' + search_keyword + '%'),
                    Chatroom.hashtag.ilike('%' + search_keyword + '%')
                ) if search_keyword else True
            )
            .subquery()
        )

        # 2. 조회한 chatroom의 chat_id로 chat_message에서 가장 최근 메시지를 찾는 서브쿼리
        subquery2 = (
            db.query(
                ChatMessage.chat_id,
                func.max(ChatMessage.created_time).label('latest_message_time')
            )
            .filter(ChatMessage.chat_id.in_(subquery1))
            .group_by(ChatMessage.chat_id)
            .subquery()
        )

        # 3. 안읽은 메시지 카운트를 조회하는 서브쿼리
        subquery3 = (
            db.query(
                UnreadChatMessage.chat_id,
                func.count().label('unread_count')
            )
            .filter(UnreadChatMessage.user_id == user_id)
            .group_by(UnreadChatMessage.chat_id)
            .subquery()
        )

        # 최종 쿼리
        query = (
            db.query(
                Chatroom,
                func.coalesce(subquery2.c.latest_message_time, Chatroom.last_modified_time).label(
                    'latest_message_time'),
                subquery3.c.unread_count,
                User.user_nm,
            )
            .outerjoin(subquery2, Chatroom.chat_id == subquery2.c.chat_id)
            .outerjoin(subquery3, Chatroom.chat_id == subquery3.c.chat_id)
            .outerjoin(User, Chatroom.user_id == User.user_id)  # 문의자명 조회
            .filter(Chatroom.chat_id.in_(subquery1))
            .order_by(
                # Chatroom.state_cd.desc(),                   # 지원중인 채팅방을 위쪽으로
                func.coalesce(subquery2.c.latest_message_time,
                              Chatroom.last_modified_time).desc(),     # 수신메시지 최신 순서대로
                subquery2.c.latest_message_time.is_(None),  # 수신메시지가 없을 경우
                Chatroom.chat_id.asc())                     # 먼저 문의한 순서대로
        )

        chatroom_schema_list = query.all()
        result_chatroom_model_list = []
        for chatroom_schema, latest_message_time, unread_count, user_nm in chatroom_schema_list:
            model = models.ChatRoomModel.model_validate(chatroom_schema)
            model.latest_message_time = latest_message_time
            model.unread_count = unread_count
            model.user_nm = user_nm
            result_chatroom_model_list.append(model)
        db.flush()
        return result_chatroom_model_list
    except Exception as e:
        logger.error("Error get_support_chatroom_list: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))


# SUPPORT 채팅방 목록 카운트 조회
def get_support_chatroom_list_count(db: Session, user_id: int, state_cd_list: List[str], search_keyword: str) -> int:
    try:

        # 유저 조회
        user_model = user_repository.get_user_by_user_id(db, user_id)

        # chatroom 조회
        query = (
            db.query(func.count(Chatroom.chat_id))
            .filter(
                Chatroom.delete_yn.isnot(True),
                Chatroom.user_id != user_id,
                or_(
                    Chatroom.mgr_user_id == None,
                    Chatroom.mgr_user_id == user_id
                ) if user_model.role_cd == 'HELP' else Chatroom.mgr_user_id == user_id,
                Chatroom.state_cd.in_(
                    state_cd_list) if state_cd_list else True,
                or_(
                    Chatroom.chat_title.ilike('%' + search_keyword + '%'),
                    Chatroom.chat_content.ilike('%' + search_keyword + '%')
                ) if search_keyword else True
            )
        )

        count = query.scalar()
        db.flush()
        return count
    except Exception as e:
        logger.error("Error get_support_chatroom_list_count: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))


# 채팅방 그룹 ID 업데이트
def update_chat_group_id(db: Session, chat_id: int, chat_group_id: int) -> models.ChatRoomModel:
    try:
        if chat_id == None or chat_group_id == None:
            return None
        chatroom_schema = db.query(Chatroom).filter(
            Chatroom.chat_id == chat_id).first()
        chatroom_schema.chat_group_id = chat_group_id
        db.commit()
        db.flush()
        return models.ChatRoomModel.model_validate(chatroom_schema)
    except Exception as e:
        logger.error("Error update_chat_group_id: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))


def update_chatroom(db: Session, chatroom_model: models.ChatRoomModel) -> models.ChatRoomModel:
    try:
        chatroom_schema = db.query(Chatroom).filter(
            Chatroom.chat_id == chatroom_model.chat_id).first()
        if chatroom_schema == None:
            return None

        if chatroom_model.chat_group_id:
            chatroom_schema.chat_group_id = chatroom_model.chat_group_id

        if chatroom_model.state_cd:
            chatroom_schema.state_cd = chatroom_model.state_cd

        if chatroom_model.with_bot_yn:
            chatroom_schema.with_bot_yn = chatroom_model.with_bot_yn

        if chatroom_model.chat_title:
            chatroom_schema.chat_title = chatroom_model.chat_title

        if chatroom_model.chat_content:
            chatroom_schema.chat_content = chatroom_model.chat_content

        if chatroom_model.hashtag:
            chatroom_schema.hashtag = chatroom_model.hashtag

        if chatroom_model.modified_by:
            chatroom_schema.modified_by = chatroom_model.modified_by

        if chatroom_model.mgr_user_id:
            chatroom_schema.mgr_user_id = chatroom_model.mgr_user_id

        db.commit()
        db.flush()
        # chatSummaryModule.thread_chat_summary(chatroom_model.chat_id)
        return models.ChatRoomModel.model_validate(chatroom_schema)
    except Exception as e:
        logger.error("Error update_chatroom: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))


# 채팅방 상태 변경
def update_chatroom_state(db: Session, chat_id: int, state_cd: str) -> models.ChatRoomModel:
    try:
        chatroom_schema = db.query(Chatroom).filter(
            Chatroom.chat_id == chat_id).first()
        if chatroom_schema == None:
            return None

        chatroom_schema.state_cd = state_cd
        if state_cd in ['CRSTT010', 'CRSTT020']:
            chatroom_schema.with_bot_yn = True
        elif state_cd in ['CRSTT030', 'CRSTT040', 'CRSTT050']:
            chatroom_schema.with_bot_yn = False
        db.commit()
        db.flush()
        # chatSummaryModule.thread_chat_summary(chat_id)
        return models.ChatRoomModel.model_validate(chatroom_schema)
    except Exception as e:
        logger.error("Error update_chatroom_state: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))


# 채팅방 종료
def close_chatroom(db: Session, chatroom_input: Union[models.ChatRoomModel, int]) -> models.ChatRoomModel:
    try:
        if isinstance(chatroom_input, models.ChatRoomModel):
            chat_id = chatroom_input.chat_id
        elif isinstance(chatroom_input, int):
            chat_id = chatroom_input
        
        chatroom_schema = db.query(Chatroom).filter(
            Chatroom.chat_id == chat_id).first()

        if chatroom_schema == None:
            return None

        # Todo llm통해서 채팅내역 요약 및 해시태그 업데이트 로직 추가 필요
        # chatSummaryModule.thread_chat_summary(chatroom_model.chat_id)
        extractChatQnAModule.thread_extract_chat_qna(chat_id)

        chatroom_schema.state_cd = 'CRSTT050'
        db.commit()
        db.flush()
        return models.ChatRoomModel.model_validate(chatroom_schema)
    except Exception as e:
        logger.error("Error close_chatroom: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))


# 채팅방 삭제
def delete_chatroom(db: Session, user_id: int, chat_id: int) -> models.ChatRoomModel:
    try:
        user_model = user_repository.get_user_by_user_id(db, user_id)

        if user_model == None:
            return None

        chatroom_schema = db.query(Chatroom).filter(
            Chatroom.chat_id == chat_id).first()

        if chatroom_schema == None:
            return None

        if user_model.role_cd not in ('ADM', 'MGR'):
            chatroom_schema.delete_yn = True
            chatroom_schema.modified_by = user_id
            db.commit()
        else:
            # Todo  채팅방 참여자중에 삭제요청한 사용자가 있으면 삭제처리
            chatroom_schema.delete_yn = True
            chatroom_schema.modified_by = user_id
            db.commit()
        db.flush()
        return models.ChatRoomModel.model_validate(chatroom_schema)
    except Exception as e:
        logger.error("Error delete_chatroom: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))


# 채팅방 참여자 추가
def add_chat_user(db: Session, chatroom_user_list: List[models.ChatRoomUserModel]) -> List[models.ChatRoomUserModel]:
    try:
        # logger.info("/chatroom/chat_id/user/add"+str(chatroom_user_list))
        if chatroom_user_list == None or len(chatroom_user_list) < 2:
            return None

        result_chatroom_user_model = []

        try:
            for chatroom_user in chatroom_user_list:
                chatroom_user_schema = chatroom_user.model_dump_schema()
                db.add(chatroom_user_schema)
                db.commit()
                # refresh to get the new ID or other default fields
                db.refresh(chatroom_user_schema)
                result_chatroom_user_model.append(
                    models.ChatRoomUserModel.model_validate(chatroom_user_schema))
            db.flush()
        except Exception as e:
            db.rollback()
            logger.error("Error adding chat user: " + str(e))
            db.flush()
            return None
        # logger.info("result_chatroom_user_model : " +   str(result_chatroom_user_model))
        return result_chatroom_user_model
    except Exception as e:
        logger.error("Error add_chat_user: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))

# 채팅방 메시지 목록 조회


def get_chat_message_list(db: Session, chat_id: int) -> List[models.ChatMessageModel]:
    try:
        print("get_chat_message_list - chat_id : "+str(chat_id))
        prev_chat_message_schema_list = []

        # 이전 채팅방 메시지 목록 조회 (챗봇과의 대화)
        chatroom_schema = db.query(Chatroom).where(
            Chatroom.chat_id == chat_id).first()
        if chatroom_schema is not None and chatroom_schema.chat_group_id != chatroom_schema.chat_id:
            prev_chat_message_schema_list = db.query(ChatMessage, User.user_nm, User.dept_nm).join(User, ChatMessage.user_id == User.user_id).filter(
                ChatMessage.chat_id == chatroom_schema.chat_group_id).order_by(ChatMessage.chat_msg_id.asc()).all()

        chat_message_schema_list = db.query(ChatMessage, User.user_nm, User.dept_nm).join(
            User, ChatMessage.user_id == User.user_id).filter(ChatMessage.chat_id == chat_id).order_by(ChatMessage.chat_msg_id.asc()).all()

        message_list = prev_chat_message_schema_list + chat_message_schema_list

        result_chat_message_model_list = []
        for chat_message_schema, user_nm, dept_nm in message_list:
            chat_message_model = models.ChatMessageModel.model_validate(
                chat_message_schema)
            chat_message_model.user_nm = user_nm
            chat_message_model.dept_nm = dept_nm
            result_chat_message_model_list.append(chat_message_model)
        db.flush()

        # chat_id의 대화 메모리 초기화
        g.chat_memory_model.clear_chat_memory(chat_id)
        for chat_message in result_chat_message_model_list:
            input_text = ""
            output_text = ""
            if (chat_message.user_role_cd == 'USR'):
                input_text = chat_message.chat_message
            else:
                output_text = chat_message.chat_message

            if input_text != "" and output_text != "":
                g.chat_memory_model.save_context(
                    chat_id, input_text, output_text)
        return result_chat_message_model_list
    except Exception as e:
        logger.error("Error get_chat_message_list: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))


# 채팅방 메시지 목록 조회
def get_chat_message_list_by_user_id(db: Session, chat_id: int, user_id: int) -> List[models.ChatMessageModel]:
    try:
        print("get_chat_message_list - chat_id : "+str(chat_id))

        if chat_id == None or chat_id == 0 or user_id == None:
            raise HTTPException(
                status_code=400, detail="해당 정보를 조회할 수 있는 권한이 없습니다.")

        prev_chat_message_schema_list = []

        # 이전 채팅방 메시지 목록 조회 (챗봇과의 대화)
        chatroom_schema = db.query(Chatroom).where(
            Chatroom.chat_id == chat_id).first()
        if chatroom_schema is not None and chatroom_schema.chat_group_id != chatroom_schema.chat_id:
            prev_chat_message_schema_list = db.query(ChatMessage, User.user_nm, User.dept_nm, 0).join(User, ChatMessage.user_id == User.user_id).filter(
                ChatMessage.chat_id == chatroom_schema.chat_group_id).order_by(ChatMessage.chat_msg_id.asc()).all()

        # chat_message_schema_list = db.query(ChatMessage, User.user_nm, User.dept_nm).join(User, ChatMessage.user_id == User.user_id).filter(ChatMessage.chat_id == chat_id).order_by(ChatMessage.chat_msg_id.asc()).all()
        # UnreadMsg = aliased(UnreadChatMessage)
        query = (
            db.query(ChatMessage,
                     User.user_nm,
                     User.dept_nm,
                     func.count(UnreadChatMessage.unread_id).label(
                         'unread_count')
                     )
            .join(User, ChatMessage.user_id == User.user_id)
            .outerjoin(UnreadChatMessage, ChatMessage.chat_msg_id == UnreadChatMessage.chat_msg_id)
            .filter(ChatMessage.chat_id == chat_id)
            .group_by(ChatMessage, User.user_nm, User.dept_nm)
            .order_by(ChatMessage.chat_msg_id.asc())

        )
        chat_message_schema_list = query.all()

        message_list = prev_chat_message_schema_list + chat_message_schema_list
        # print("chat_message_list : "+str(message_list))

        result_chat_message_model_list = []
        for chat_message_schema, user_nm, dept_nm, unread_count in message_list:
            chat_message_model = models.ChatMessageModel.model_validate(
                chat_message_schema)
            chat_message_model.user_nm = user_nm
            chat_message_model.dept_nm = dept_nm
            chat_message_model.unread_count = unread_count
            result_chat_message_model_list.append(chat_message_model)
        db.flush()

        # chat_id의 대화 메모리 초기화
        g.chat_memory_model.clear_chat_memory(chat_id)
        for chat_message in result_chat_message_model_list:
            input_text = ""
            output_text = ""
            if (chat_message.user_role_cd == 'USR'):
                input_text = chat_message.chat_message
            else:
                output_text = chat_message.chat_message

            if input_text != "" and output_text != "":
                g.chat_memory_model.save_context(
                    chat_id, input_text, output_text)

        unread_chat_message_repository.del_unread_chat_message(
            db, chat_id, user_id)
        return result_chat_message_model_list
    except Exception as e:
        logger.error("Error get_chat_message_list: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))


# 채팅방 메시지 등록
def register_chat_message(db: Session, chat_message_model: models.ChatMessageModel) -> models.ChatMessageModel:
    try:
        chat_message_schema = chat_message_model.model_dump_schema()
        db.add(chat_message_schema)
        db.commit()
        result_chat_message_model = models.ChatMessageModel.model_validate(
            chat_message_schema)
        unread_chat_message_repository.register_unread_chat_message(
            db, result_chat_message_model)
        unread_count = unread_chat_message_repository.get_unread_chat_message_count_of_chat_message_id(
            db, chat_message_schema.chat_msg_id, chat_message_model.user_id)
        logger.info("unread_count : "+str(unread_count))

        result_chat_message_model.unread_count = unread_count

        db.flush()
        return result_chat_message_model
    except Exception as e:
        logger.error("Error register_chat_message: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))


# 채팅방 참여자 목록 조회
def get_chatroom_users(db: Session, chat_id: int) -> List[models.ChatRoomUserModel]:
    try:
        chatroom_user_schema_list = db.query(ChatroomUser).where(ChatroomUser.delete_yn == 'N' and
                                                                 ChatroomUser.chat_id == chat_id).all()
        result_chatroom_user_model_list = []
        for chatroom_user_schema in chatroom_user_schema_list:
            result_chatroom_user_model_list.append(
                models.ChatRoomUserModel.model_validate(chatroom_user_schema))
        db.flush()
        return result_chatroom_user_model_list
    except Exception as e:
        logger.error("Error get_chatroom_users: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))

# 채팅방 현재 담당자 업데이트


def update_chatroom_manager(db: Session, chat_id: int, mgr_user_id: int) -> models.ChatRoomModel:
    try:
        chatroom_schema = db.query(Chatroom).filter(
            Chatroom.chat_id == chat_id).first()
        if chatroom_schema == None:
            return None

        chatroom_schema.mgr_user_id = mgr_user_id
        db.commit()
        db.flush()
        # chatSummaryModule.thread_chat_summary(chat_id)
        return models.ChatRoomModel.model_validate(chatroom_schema)
    except Exception as e:
        logger.error("Error update_chatroom_manager: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))


def get_chat_message(db: Session, chat_msg_id: int) -> models.ChatMessageModel:
    try:
        chat_message_schema = db.query(ChatMessage).where(
            ChatMessage.chat_msg_id == chat_msg_id).first()
        if chat_message_schema == None:
            return None
        chat_message_model = models.ChatMessageModel.model_validate(
            chat_message_schema)
        chat_message_model.unread_count = db.query(UnreadChatMessage).filter(
            UnreadChatMessage.chat_msg_id == chat_msg_id).count()
        db.flush()
        return chat_message_model
    except Exception as e:
        logger.error("Error get_chat_message: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))


def update_chatroom_service_cd(db: Session, chat_id: int, service_cd: str) -> models.ChatRoomModel:
    try:
        chatroom_schema = db.query(Chatroom).filter(
            Chatroom.chat_id == chat_id).first()
        if chatroom_schema == None:
            return None

        chatroom_schema.service_cd = service_cd
        db.commit()
        db.flush()
        return models.ChatRoomModel.model_validate(chatroom_schema)
    except Exception as e:
        logger.error("Error update_chatroom_service_cd: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))


# 지원 중 채팅방 메시지 알림처리
def get_support_chatroom_notice(db: Session):
    try:
        logger.debug("get_support_chatroom_notice")

        seoul_now = datetime.now(ZoneInfo('Asia/Seoul'))
        three_days_ago = seoul_now - timedelta(days=3)
        four_days_ago = seoul_now - timedelta(days=4)

        subquery = (
            db.query(schemas.Chatroom.chat_id)
            .filter(
                Chatroom.user_id.in_([2184, 1937, 2313]),  # [테스트 후 조건 삭제] 담당자 필터 2184(예린), 1937(우영), 2313(석진)
                schemas.Chatroom.state_cd == 'CRSTT010',
                schemas.Chatroom.delete_yn == False
            )
            .subquery()
        )

        # 종료 요청 알림 조회 쿼리
        chatroom_notice_query = (
            db.query(distinct(schemas.ChatMessage.chat_id))
            .filter(
                schemas.ChatMessage.chat_id.in_(subquery),
                schemas.ChatMessage.user_role_cd == 'BOT',
                schemas.ChatMessage.created_time <= three_days_ago,
                schemas.ChatMessage.created_time > four_days_ago,
            )
        )

        # 자동 종료처리 대상 조회 쿼리
        chatroom_close_query = (
            db.query(distinct(schemas.ChatMessage.chat_id))
            .filter(
                schemas.ChatMessage.chat_id.in_(subquery),
                schemas.ChatMessage.user_role_cd == 'BOT',
                schemas.ChatMessage.created_time <= four_days_ago,
            ) 
        )

        # chatroom_notice_schema = db.query(Chatroom).filter(
        #     Chatroom.user_id.in_([2184, 1937, 2313]),  # [테스트 후 조건 삭제] 담당자 필터 2184(예린), 1937(우영), 2313(석진)
        #     Chatroom.state_cd == 'CRSTT010',
        #     Chatroom.last_modified_time <= three_days_ago,
        #     Chatroom.last_modified_time > four_days_ago
        #     ).all()
        
        # chatroom_close_schema = db.query(Chatroom).filter(
        #     Chatroom.user_id.in_([2184, 1937, 2313]),  # [테스트 후 조건 삭제] 담당자 필터 2184(예린), 1937(우영), 2313(석진)
        #     Chatroom.state_cd == 'CRSTT010',
        #     Chatroom.last_modified_time <= four_days_ago,
        #     ).all()

        chatroom_notice_schema = [row[0] for row in chatroom_notice_query.all()]
        chatroom_close_schema = [row[0] for row in chatroom_close_query.all()]
        
        logger.info("chatroom_notice_schema: " + str(len(chatroom_notice_schema)))
        logger.info("chatroom_close_schema: " + str(len(chatroom_close_schema)))

        # 종료 처리 요청 메신저 알림 발송
        for chat_id in chatroom_notice_schema:
            logger.info("support_chat_list_schema: " + str(chat_id))
            nTalkModule.send_msg_to_messenger(db,  "CLOSE", chat_id)

        # 시스템 자동 종료 처리
        for chat_id in chatroom_close_schema:
            logger.info("support_chat_list_schema: " + str(chat_id))
            close_chatroom(db, chat_id)

    except Exception as e:
        logger.error("Error get_support_chatroom_notice: " + str(e))
        raise HTTPException(status_code=500, detail=str(e))