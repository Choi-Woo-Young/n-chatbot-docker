import logging
from typing import Dict, List, Optional
from fastapi import APIRouter, Depends, FastAPI, HTTPException, Query, logger
from sqlalchemy.orm import Session

from api.modules import chatSummaryModule
from ..config import models, schemas
from ..repositories import user_repository, chatroom_repository, unread_chat_message_repository
from ..config.database import SessionLocal, engine
import json
from api.config.globals import logger
from api.config.database import get_db
from pydantic import BaseModel
from ..modules import nTalkModule

class UpdateChatRoomStateModel(BaseModel):
    user_id: int
    chat_id: int
    state_cd: str

class DeleteChatRoomModel(BaseModel):
    user_id: int
    chat_id: int

schemas.Base.metadata.create_all(bind=engine)

router = APIRouter(
    prefix="/chatroom",
    tags=["chatroom"]
)

# MY 채팅방 목록 조회
@router.get("/list", response_model=Optional[List[models.ChatRoomModel]])
def get_chatroom_list(user_id: Optional[int] = None, state_cds: Optional[str] = None, search_keyword: Optional[str] = None, db: Session = Depends(get_db)):
    try:
        #logger.info('/chatroom/list- state_cd_list:' + str(state_cds) + " / user_id:"+str(user_id)+" / search_keyword:"+str(search_keyword))
        state_cd_list = []
        if state_cds != "" and state_cds != None:
            state_cd_list = state_cds.split(',')
        result_chatroom_model_list = chatroom_repository.get_chatroom_list(db, user_id, state_cd_list, search_keyword)
        if result_chatroom_model_list == None:
            return None
        return result_chatroom_model_list
    except Exception as e:
        logger.error('/list: '+str(e))
        raise HTTPException(status_code=400, detail=str(e))


# SUPPORT 채팅방 목록 조회
@router.get("/support/list", response_model=Optional[List[models.ChatRoomModel]])
def get_support_chatroom_list(user_id: Optional[int] = None, state_cds: Optional[str] = None, search_keyword: Optional[str] = None, db: Session = Depends(get_db)):
    try:
        logger.info('/chatroom/support/list- state_cd_list:' + str(state_cds) + " / user_id:"+str(user_id))
        state_cd_list = []
        if state_cds != "" and state_cds != None:
            state_cd_list = state_cds.split(',')

        result_chatroom_model_list = chatroom_repository.get_support_chatroom_list(
            db, user_id, state_cd_list, search_keyword)
        if result_chatroom_model_list == None:
            return None
        return result_chatroom_model_list
    except Exception as e:
        logger.error('/support/list:'+str(e))
        raise HTTPException(status_code=400, detail=str(e))

# SUPPORT 채팅방 목록 카운트 조회
@router.get("/support/list/count", response_model=int)
def get_support_chatroom_list(user_id: Optional[int] = None, state_cds: Optional[str] = None, db: Session = Depends(get_db)):
    try:
        #logger.info('/chatroom/support/list/count- state_cd_list:' + str(state_cds) + " / user_id:"+str(user_id))
        state_cd_list = []
        if state_cds != "" and state_cds != None:
            state_cd_list = state_cds.split(',')

        count = chatroom_repository.get_support_chatroom_list_count(
            db, user_id, state_cd_list, "")
        
        return count
    except Exception as e:
        logger.error('/support/list/count:'+str(e))
        raise HTTPException(status_code=400, detail=str(e))


# 채팅방 단건 조회
@router.get("/get", response_model=Optional[models.ChatRoomModel])
def get_chatroom(chat_id: Optional[int], user_id :Optional[int]=None, db: Session = Depends(get_db)):
    try:
        logger.info('/chatroom/get-chat_id:'+str(chat_id)+" / user_id:"+str(user_id))
        if chat_id == None:
            return None
        
        result_chatroom_model = chatroom_repository.get_chatroom(db, chat_id, user_id)
        
        logger.debug('result_chatroom_model:'+str(result_chatroom_model))
        if result_chatroom_model == None:
            return None
        chatSummaryModule.thread_chat_summary(chat_id)
        return result_chatroom_model
    except Exception as e:
        logger.error('/get:'+str(e))
        raise HTTPException(status_code=400, detail=str(e))


# 이전 채팅방 조회 (챗봇과의 대화방)
@router.get("/previous", response_model=Optional[models.ChatRoomModel])
def get_previous_chatroom(chat_id: Optional[int], db: Session = Depends(get_db)):
    try:
        logger.info('/chatroom/previous-chat_id:'+str(chat_id))
        if chat_id == None:
            return None
        
        chatroom_model = chatroom_repository.get_chatroom(db=db, chat_id=chat_id)
        if chatroom_model == None or chatroom_model.chat_group_id == chatroom_model.chat_id:
            return None
        
        result_chatroom_model = chatroom_repository.get_chatroom(db=db, chat_id=chatroom_model.chat_group_id)
        
        logger.debug('result_chatroom_model:'+str(result_chatroom_model))
        if result_chatroom_model == None:
            return None
        # chatSummaryModule.thread_chat_summary(chat_id)
        return result_chatroom_model
    except Exception as e:
        logger.error('/get:'+str(e))
        raise HTTPException(status_code=400, detail=str(e))


# 채팅방 생성
@router.post("/register", response_model=Optional[models.ChatRoomModel])
async def register_chatroom(chatroom: models.ChatRoomModel, db: Session = Depends(get_db)):
    try:
        logger.info('*********************/chatroom/register-chatroom:' + chatroom.model_dump_json())
        result_chatroom_model = chatroom_repository.register_chatroom(db, chatroom)
        if result_chatroom_model == None:
            return None
        
        if chatroom.state_cd == "CRSTT030" : #지원대기
            nTalkModule.thread_send_msg_to_messenger(db,  "WAITING", result_chatroom_model.chat_id)  # SUPPORT, WAITING, MIGRATION
        return result_chatroom_model    
    except Exception as e:
        logger.error('/register:'+str(e))
        raise HTTPException(status_code=400, detail=str(e))

# 채팅방 업데이트
@router.post("/update", response_model=Optional[models.ChatRoomModel])
def update_chatroom(chatroom: models.ChatRoomModel, db: Session = Depends(get_db)):
    try:
        logger.info('/chatroom/update-user:'+chatroom.model_dump_json())
        
        result_chatroom_model = chatroom_repository.update_chatroom(db, chatroom)
        if result_chatroom_model == None:
            return None
        return result_chatroom_model
    except Exception as e:
        logger.error('/update:'+str(e))
        raise HTTPException(status_code=400, detail=str(e))


# 채팅방 상태 업데이트
@router.post("/update/state", response_model=Optional[models.ChatRoomModel])
def update_chatroom_state(req: UpdateChatRoomStateModel, db: Session = Depends(get_db)):
    try:
        logger.info('/chatroom/update-state-user:'+str(req.user_id) +
                    "\nchat_id:"+str(req.chat_id)+"\nstate_cd:"+req.state_cd)
        if (req.user_id == None or req.chat_id == None or req.state_cd == None):
            return None
        result_chatroom_model = chatroom_repository.update_chatroom_state(
            db, req.chat_id, req.state_cd)
        if result_chatroom_model == None:
            return None
        return result_chatroom_model
    except Exception as e:
        logger.error('/update/state:'+str(e))
        raise HTTPException(status_code=400, detail=str(e))
    
# 채팅방 삭제
@router.post("/delete", response_model=Optional[models.ChatRoomModel])
def delete_chatroom(req: DeleteChatRoomModel, db: Session = Depends(get_db)):
    try:
        logger.info('/chatroom/delete-user:'+str(req.user_id) +
                    "\nchat_id:"+str(req.chat_id))
        if (req.user_id == None or req.chat_id == None):
            return None
        result_chatroom_model = chatroom_repository.delete_chatroom(
            db, req.user_id, req.chat_id)
        if result_chatroom_model == None:
            return None
        return result_chatroom_model
    except Exception as e:
        logger.error('/delete:'+str(e))
        raise HTTPException(status_code=400, detail=str(e))


# 채팅방 종료
@router.post("/close", response_model=Optional[models.ChatRoomModel])
def close_chatroom(chatroom: models.ChatRoomModel, db: Session = Depends(get_db)):
    try:
        logger.info('/chatroom/close-chatroom:'+chatroom.model_dump_json())
        result_chatroom_model = chatroom_repository.close_chatroom(db, chatroom)
        if result_chatroom_model == None:
            return None
        chatSummaryModule.thread_chat_summary(chatroom.chat_id)
        return result_chatroom_model
    except Exception as e:
        logger.error('/close:'+str(e))
        raise HTTPException(status_code=400, detail=str(e))


# 채팅방 메시지 목록 조회
@router.get("/message/list", response_model=Optional[List[models.ChatMessageModel]])
def get_chat_message_list(chat_id: Optional[int], user_id:Optional[int],  db: Session = Depends(get_db)):
    try:
        logger.info('/chatroom/message/list-chat_id:'+str(chat_id)+" / user_id:"+str(user_id))
        if chat_id == None or chat_id == 0:
            return None
        result_chat_message_model_list = chatroom_repository.get_chat_message_list_by_user_id(db, chat_id, user_id)
        return result_chat_message_model_list
    except Exception as e:
        logger.error('/message/list:'+str(e))
        raise HTTPException(status_code=400, detail=str(e))


# 채팅방 메시지 등록
@router.post("/message/register", response_model=Optional[models.ChatMessageModel])
def register_chat_message(chat_message: Optional[models.ChatMessageModel], db: Session = Depends(get_db)):
    try:
        logger.info('/chatroom/message/register-'+chat_message.model_dump_json())
        if chat_message == None:
            return None
        result_chat_message_model = chatroom_repository.register_chat_message(db, chat_message)
        chatroom = chatroom_repository.get_chatroom(db, chat_message.chat_id, chat_message.user_id)
        result_chat_message_model.service_cd = chatroom.service_cd
        
        if result_chat_message_model == None:
            return None
        return result_chat_message_model
    except Exception as e:
        logger.error('/message/register:'+str(e))
        raise HTTPException(status_code=400, detail=str(e))


# 채팅방 참여자 추가
@router.post("/user/add", response_model=Optional[List[models.ChatRoomUserModel]])
def add_chat_user(chatroom_user_list: List[models.ChatRoomUserModel], db: Session = Depends(get_db)):
    try:
        logger.info("/chatroom/chat_id/user/add"+str(chatroom_user_list))
        if chatroom_user_list == None or len(chatroom_user_list) < 2:
            return None
        result_chatroom_user_model_list = chatroom_repository.add_chat_user(
            db, chatroom_user_list)
        if not result_chatroom_user_model_list:
            return None
        return result_chatroom_user_model_list
    except Exception as e:
        logger.error('/user/add:'+str(e))
        raise HTTPException(status_code=400, detail=str(e))


# 채팅 메시지 읽음 처리
@router.post("/message/read", response_model=Optional[models.ChatMessageModel])
def read_chat_message(unread_chat_message: models.UnreadChatMessage, db: Session = Depends(get_db)):
    try:
        logger.info('/chatroom/message/read-'+unread_chat_message.model_dump_json())
        if unread_chat_message == None:
            return None
        unread_chat_message_repository.read_chat_message(db, unread_chat_message.chat_msg_id, unread_chat_message.user_id)
        result_chat_message_model = chatroom_repository.get_chat_message(db, unread_chat_message.chat_msg_id)
        if result_chat_message_model == None:
            return None
        return result_chat_message_model
    except Exception as e:
        logger.error('/message/register:'+str(e))
        raise HTTPException(status_code=400, detail=str(e))
