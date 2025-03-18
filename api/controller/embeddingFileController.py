import logging
from typing import Dict, List, Optional
from fastapi import APIRouter, Depends, FastAPI, HTTPException, Query, logger, status
from sqlalchemy.orm import Session
from ..config import models, schemas
from ..repositories import embedding_file_repository
from ..config.database import SessionLocal, engine
import json
from api.config.globals import logger
from api.config.database import get_db

schemas.Base.metadata.create_all(bind=engine)

router = APIRouter(
    prefix="/embedding-file",
    tags=["embedding-file"]
)

@router.get("/list", response_model=Optional[List[models.EmbeddingFileModel]])
def get_embedding_file_list(db: Session = Depends(get_db)):
    try:
        logger.info('/embedding-file/list')
        result_embedding_file_model_list = embedding_file_repository.get_embedding_file_list(db)
        if result_embedding_file_model_list == None:
            return None
        return result_embedding_file_model_list
    except Exception as e:
        logger.error(f'get_embedding_file_list error: {e}')
        raise HTTPException(status_code=400, detail=str(e))
