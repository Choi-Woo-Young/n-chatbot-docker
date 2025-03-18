# import logging
from typing import List, Optional
from fastapi import HTTPException
from sqlalchemy.orm import Session
from ..config.schemas import ChatMessage, Chatroom, ChatroomUser, User
from ..config import models, schemas
from sqlalchemy import or_, and_
from api.modules import chatSummaryModule
from api.modules import extractChatQnAModule
from api.config.globals import logger

# 채팅방 참여자 추가
def add_chatroom_user(db: Session, chat_id: int, user_id: int, user_role_cd: str) -> models.ChatRoomUserModel:
    try:
        if chat_id == None or user_id == None or user_role_cd == None:
            return None
        chatroom_user_schema = ChatroomUser(
            chat_id=chat_id, user_id=user_id, user_role_cd=user_role_cd, chat_user_state_cd="CHAT")
        db.add(chatroom_user_schema)
        db.commit()
        db.flush()
        return models.ChatRoomUserModel.model_validate(chatroom_user_schema)
    except Exception as e:
        logger.error(f"add_chatroom_user: {e}")
        db.rollback()
        raise HTTPException(status_code=500, detail=str(e))

# 참여자 상태 업데이트
def update_chatroom_user_state_cd(db: Session, chat_id: int, user_id: Optional[int], chat_user_state_cd: str ) -> List[models.ChatRoomUserModel]:
    
    try:    
        filters = [ChatroomUser.chat_id == chat_id]
        
        if user_id is not None:
            filters.append(ChatroomUser.user_id == user_id)
        
        chatroom_user_schemas = db.query(ChatroomUser).filter(*filters).all()

        if not chatroom_user_schemas:
            return []

        # 모든 결과에 대해 상태 코드 업데이트
        for chatroom_user_schema in chatroom_user_schemas:
            chatroom_user_schema.chat_user_state_cd = chat_user_state_cd

        db.commit()
        db.flush()

        return [models.ChatRoomUserModel.model_validate(chatroom_user_schema) for chatroom_user_schema in chatroom_user_schemas]
    except Exception as e:
        logger.error(f"update_chatroom_user_state_cd: {e}")
        db.rollback()
        raise HTTPException(status_code=500, detail=str(e))