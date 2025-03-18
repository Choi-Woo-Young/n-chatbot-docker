from fastapi import HTTPException
from sqlalchemy.orm import Session
from ..config.schemas import Qna
from ..config import models, schemas
from  api.config.globals import logger

def register_qna(db: Session, qna: models.QnaModel) -> models.QnaModel:
    try:
        logger.info('*********************/qna/register-qna:' + qna.model_dump_json())
        qna_schema = qna.model_dump_schema()
        db.add(qna_schema)
        db.commit()
        db.flush()
        return qna
    except Exception as e:
        logger.error('/qna/register:'+str(e))
        db.rollback()
        raise HTTPException(status_code=400, detail=str(e))
