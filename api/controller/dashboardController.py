import logging
from typing import Dict, List, Optional
from fastapi import APIRouter, Depends, FastAPI, HTTPException, Query, logger, status
from sqlalchemy.orm import Session
from ..config import models, schemas
from ..repositories import dashboard_repository, faq_repository
from ..config.database import SessionLocal, engine
import json
from api.config.globals import logger
from api.config.database import get_db
from pydantic import BaseModel
from ..modules import nTalkModule

schemas.Base.metadata.create_all(bind=engine)

router = APIRouter(
    prefix="/dashboard",
    tags=["dashboard"]
)

@router.get("/current", response_model=Optional[dict])
def get_dashboard_current_info(user_id: int, db: Session = Depends(get_db)):
    try:
        logger.info('/dashboard/current- user_id:' +str(user_id))
        result_user_model_list = dashboard_repository.get_dashboard_current_info(db, user_id)
        if result_user_model_list == None:
            return None
        return result_user_model_list
    except Exception as e:
        logger.error(f'get_manager_list error: {e}')
        raise HTTPException(status_code=400, detail=str(e))
