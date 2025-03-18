import logging
from typing import Dict, List, Optional
from fastapi import APIRouter, Depends, FastAPI, HTTPException, Query, logger, status
from sqlalchemy.orm import Session
from ..config import models, schemas
from ..repositories import user_repository, chatroom_repository, chatroom_user_repository
from ..config.database import SessionLocal, engine
import json
from api.config.globals import logger
from api.config.database import get_db
from pydantic import BaseModel
from ..modules import nTalkModule

class TransferReqModel(BaseModel):
    user_id: int
    chat_id: int
    mgr_user_id: int

schemas.Base.metadata.create_all(bind=engine)

router = APIRouter(
    prefix="/transfer",
    tags=["transfer"]
)

# 이관할 담당자 목록 조회
@router.get("/manager/list", response_model=Optional[List[models.UserModel]])
def get_manager_list(user_id: int, chat_id: Optional[int], search_keyword: Optional[str] = None, db: Session = Depends(get_db)):
    try:
        logger.info('/transfer/manager/list- keyword:' +
                    str(search_keyword) + " / user_id:" + str(user_id) + " / chat_id:" + str(chat_id))

        result_user_model_list = user_repository.get_manager_list(
            db, user_id, chat_id, search_keyword)
        if result_user_model_list == None:
            return None
        return result_user_model_list
    except Exception as e:
        logger.error(f'get_manager_list error: {e}')
        raise HTTPException(status_code=400, detail=str(e))

# 담당자 이관
@router.post("/manager", response_model=Optional[models.ChatRoomModel])
def transfer_manager(req: TransferReqModel, db: Session = Depends(get_db)):
    try:
        logger.info('/transfer/manager - user_id:' + str(req.user_id) +
                    "\nchat_id:" + str(req.chat_id) + "\nmgr_user_id:" + str(req.mgr_user_id))
        
        if (req.user_id == None or req.chat_id == None or req.mgr_user_id == None):
            return None
        
        # 채팅방 유효 체크
        chatroom_model = chatroom_repository.get_chatroom(db=db, chat_id=req.chat_id)
        
        if chatroom_model is None:
            raise HTTPException(
                status_code=status.HTTP_403_FORBIDDEN, detail="유효한 채팅방이 없습니다.")
        
        # 담당자 이관인 경우 (담당자 지원 중 다른 담당자로 이관한 경우)
        # 1. chatroom - 담당자, 상태(지원대기) 업데이트
        chatroom_model = chatroom_repository.update_chatroom(
                db, models.ChatRoomModel(chat_id=req.chat_id, mgr_user_id=req.mgr_user_id, state_cd="CRSTT030"))
        # 2. chatroom_user - 이전담당자 상태(종료) 업데이트, 신규담당자 추가
        chatroom_user_repository.update_chatroom_user_state_cd(db, req.chat_id, req.user_id, "END")
        chatroom_user_repository.add_chatroom_user(db, req.chat_id, req.mgr_user_id, "MGR")
        
        #ntalk 메신저 알림 발송
        nTalkModule.thread_send_msg_to_messenger(db,  "MIGRATION", req.chat_id)  # SUPPORT, WAITING, MIGRATION
        return chatroom_model
    except HTTPException as e:
        # HTTPException은 그대로 다시 raise
        raise e
    except Exception as e:
        # 나머지 모든 예외는 400으로 처리
        logger.error('/transfer/manager error: ' + str(e))
        raise HTTPException(status_code=400, detail="오류 발생")
