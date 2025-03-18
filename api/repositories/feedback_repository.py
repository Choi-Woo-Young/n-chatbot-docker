# import logging
from typing import List, Optional
from fastapi import HTTPException
from sqlalchemy.orm import Session
from ..config.schemas import EmbeddingFile, Feedback
from ..config import models
from sqlalchemy import or_, and_
from api.config.globals import logger
import api.config.globals as g


# feedback 등록
def add_feedback(db: Session, user_id: int, contents: str, image_path: str) -> models.FeedbackModel:
    try:
        feedback_schema = Feedback(
            contents=contents, image_path=image_path, state_cd="FBSTT010", created_by=user_id)
        db.add(feedback_schema)
        db.commit()
        db.flush()
        return models.FeedbackModel.model_validate(feedback_schema)
    except Exception as e:
        logger.error(f"add_feedback: {e}")
        db.rollback()
        raise HTTPException(status_code=500, detail=str(e))


# feedback 목록 조회
def get_feedback_list(db: Session) -> List[models.FeedbackModel]:
    try:
        conditions = []
        conditions.append(Feedback.delete_yn.isnot(True))

        query = db.query(Feedback).order_by(Feedback.feedback_id.asc())
        if conditions:
            query = query.where(and_(*conditions))

        feedback_schema_list = query.all()
        result_list = []
        for feedback_schema in feedback_schema_list:
            result_list.append(
                models.FeedbackModel.model_validate(feedback_schema))
        db.flush()
        return result_list

    except Exception as e:
        logger.error(f"get_feedback_list: {e}")
        raise HTTPException(status_code=500, detail=str(e))
