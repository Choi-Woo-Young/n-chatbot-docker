import logging
from typing import Dict, List, Optional
from fastapi import APIRouter, Depends, FastAPI, HTTPException, Query, logger, status
from sqlalchemy.orm import Session

from api.repositories import notice_repository
from ..config import models, schemas
from ..repositories import dashboard_repository, faq_repository
from ..config.database import SessionLocal, engine
import json
from api.config.globals import logger
from api.config.database import get_db

schemas.Base.metadata.create_all(bind=engine)

router = APIRouter(
    prefix="/notice",
    tags=["notice"]
)

@router.get("/list", response_model=Optional[List[models.NoticeModel]])
def get_notice_list(db: Session = Depends(get_db), is_current_notice: Optional[bool] = False):
    try:
        logger.info('/notice/list')
        result_list = notice_repository.get_notice_list(db, is_current_notice)
        if result_list == None:
            return None
        return result_list
    except Exception as e:
        logger.error(f'get_faq_list error: {e}')
        raise HTTPException(status_code=400, detail=str(e))
