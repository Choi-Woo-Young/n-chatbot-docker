from fastapi import HTTPException
import api.config.globals as g
from typing import List
from sqlalchemy.orm import Session, joinedload
from api.repositories import chatroom_user_repository
from ..config.schemas import ChatMessage, Chatroom, ChatroomUser, User
from ..config import models, schemas
from sqlalchemy import or_, and_
from ..modules import nTalkModule
from api.modules import chatSummaryModule
from api.modules import extractChatQnAModule
from api.config.globals import logger
from datetime import datetime, timedelta
from zoneinfo import ZoneInfo
from sqlalchemy import distinct

def register_unread_chat_message(db: Session, chat_message: models.ChatMessageModel):
    try:
        # 채팅방 정보 조회
        conditions = []
        conditions.append(Chatroom.delete_yn.isnot(True))
        conditions.append(Chatroom.chat_id == chat_message.chat_id)
        chatroom_schema = db.query(Chatroom).filter(and_(*conditions)).first()

        if chatroom_schema == None:
            return None

        # chatroom_user 정보 조회
        conditions = []
        conditions.append(ChatroomUser.delete_yn.isnot(True))
        conditions.append(ChatroomUser.chat_id == chat_message.chat_id)
        conditions.append(ChatroomUser.user_role_cd != "BOT")
        conditions.append(ChatroomUser.user_id != chat_message.user_id)
        chatroom_user_schema_list = db.query(
            ChatroomUser).filter(and_(*conditions)).all()

        # 메시지 읽지 않은 사용자 등록
        for chatroom_user_schema in chatroom_user_schema_list:
            db.add(schemas.UnreadChatMessage(
                chat_id=chat_message.chat_id,
                user_id=chatroom_user_schema.user_id,
                chat_msg_id=chat_message.chat_msg_id,
            ))

        db.commit()
        db.flush()
    except Exception as e:
        logger.error("Error register_unread_chat_message: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))
    
def del_unread_chat_message(db: Session, chat_id: int, user_id: int):
    try:
        if chat_id == None or user_id == None or user_id == None:
            return None
        db.query(schemas.UnreadChatMessage).filter(
            and_(schemas.UnreadChatMessage.chat_id == chat_id, schemas.UnreadChatMessage.user_id == user_id)).delete()
        db.commit()
        db.flush()
    except Exception as e:
        logger.error("Error del_unread_chat_message: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))
    


def get_unread_chat_message_count_of_chat_id(db: Session, chat_id: int, user_id: int):
    try:
        if chat_id == None or user_id == None:
            return 0
        return db.query(schemas.UnreadChatMessage).filter(and_(schemas.UnreadChatMessage.chat_id == chat_id, schemas.UnreadChatMessage.user_id != user_id)).count()
    except Exception as e:
        logger.error("Error get_unread_chat_message_count_of_chat_id: " + str(e))
        raise HTTPException(status_code=500, detail=str(e))
    
    
    
def get_unread_chat_message_count_of_chat_message_id(db: Session, chat_msg_id: int, user_id: int):
    try:
        logger.debug("get_unread_chat_message_count_of_chat_message_id - chat_msg_id: " + str(chat_msg_id)+", user_id: " + str(user_id))
        if chat_msg_id == None or user_id == None:
            return 0
        return db.query(schemas.UnreadChatMessage).filter(and_(schemas.UnreadChatMessage.chat_msg_id == chat_msg_id, schemas.UnreadChatMessage.user_id != user_id)).count()
    except Exception as e:
        logger.error("Error get_unread_chat_message_count_of_chat_message_id: " + str(e))
        raise HTTPException(status_code=500, detail=str(e))
    

def get_unread_chat_message_of_support(db: Session) -> List[models.UnreadChatMessage]:
    try:
        logger.debug("get_unread_chat_message_of_support")
        # 현재 시간에서 10분 및 20분을 뺀 시간 계산
        seoul_now = datetime.now(ZoneInfo('Asia/Seoul'))
        ten_minutes_ago = seoul_now - timedelta(minutes=10)
        twenty_minutes_ago = seoul_now - timedelta(minutes=20)

        # 지난 20분~10분 사이에 읽지 않은 메시지 조회
        unread_chat_list = db.query(
            distinct(schemas.UnreadChatMessage.user_id),
            schemas.UnreadChatMessage.chat_id
        ).join(
            schemas.Chatroom,
            schemas.UnreadChatMessage.chat_id == schemas.Chatroom.chat_id
        ).filter(
            and_(
                schemas.UnreadChatMessage.user_id.in_([2184, 1937, 2313]), # [테스트 후 조건 삭제] 담당자 필터 2184(예린), 1937(우영), 2313(석진)
                schemas.UnreadChatMessage.last_modified_time <= ten_minutes_ago,
                schemas.UnreadChatMessage.last_modified_time > twenty_minutes_ago,
                or_(
                    schemas.Chatroom.state_cd == 'CRSTT030',
                    schemas.Chatroom.state_cd == 'CRSTT040'
                )
            )
        ).group_by(
            schemas.UnreadChatMessage.user_id,
            schemas.UnreadChatMessage.chat_id
        ).all()

        result_unread_chat_list = []

        for user_id, chat_id in unread_chat_list:
            nTalkModule.send_msg_to_messenger(db,  "UNREAD", chat_id)
            # model = models.UnreadChatMessage.model_validate(unread_chat_list_schema)
            # result_unread_chat_list.append(model)

        logger.info("get_unread_chat_message_of_support: " + str(len(result_unread_chat_list)))
        return result_unread_chat_list
    except Exception as e:
        logger.error("Error get_unread_chat_message_of_support: " + str(e))
        raise HTTPException(status_code=500, detail=str(e))
    
def read_chat_message(db: Session, chat_msg_id: int, user_id: int):
    try:
        db.query(schemas.UnreadChatMessage).filter(and_(schemas.UnreadChatMessage.chat_msg_id == chat_msg_id, schemas.UnreadChatMessage.user_id == user_id)).delete()
        db.commit()
        db.flush()
    except Exception as e:
        logger.error("Error read_chat_message: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))