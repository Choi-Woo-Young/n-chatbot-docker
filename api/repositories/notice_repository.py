from fastapi import HTTPException
import api.config.globals as g
from typing import List, Optional
from sqlalchemy.orm import Session, joinedload, aliased
from ..config import models, schemas
from sqlalchemy import func, case, or_, and_
from api.config.globals import logger
from ..config.schemas import Notice
from datetime import datetime

def get_notice_list(db: Session, is_current_notice:bool) -> models.NoticeModel:
    try:
        conditions = []
        conditions.append(Notice.delete_yn.isnot(True))

        # TODO: 현재 유효한 공지사항만 조회하는 조건 추가
        if is_current_notice:
            current_time = datetime.now().strftime('%Y%m%d%H%M%S')
            conditions.append(
                and_(
                    Notice.start_time <= current_time,
                    Notice.end_time >= current_time
                )
            )

        query = db.query(Notice).order_by(Notice.notice_id.asc())
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
