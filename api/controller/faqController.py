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

schemas.Base.metadata.create_all(bind=engine)

router = APIRouter(
    prefix="/faq",
    tags=["faq"]
)

@router.get("/list", response_model=Optional[List[models.FaqModel]])
def get_faq_list(db: Session = Depends(get_db)):
    try:
        logger.info('/faq/list- user_id')
        result_faq_model_list = faq_repository.get_faq_list(db)
        if result_faq_model_list == None:
            return None
        return result_faq_model_list
    except Exception as e:
        logger.error(f'get_faq_list error: {e}')
        raise HTTPException(status_code=400, detail=str(e))
