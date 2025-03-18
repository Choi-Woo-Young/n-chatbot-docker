from fastapi import HTTPException
import api.config.globals as g
from typing import List, Optional
from sqlalchemy.orm import Session, joinedload, aliased
from ..config import models, schemas
from sqlalchemy import func, case, or_, and_
from api.config.globals import logger

def get_faq_list(db: Session) -> models.FaqModel:
    try:
        print('get_faq_list')
        query = (
            db.query(schemas.Faq).where(schemas.Faq.delete_yn.isnot(True)).order_by(schemas.Faq.faq_id.asc())
        )
        faq_schema_list = query.all()
        result_faq_model_list = []
        for faq_schema in faq_schema_list:
            logger.info('faq_schema : '+str(faq_schema))
            model = models.FaqModel.model_validate(faq_schema)
            result_faq_model_list.append(model)
        db.flush()
        return result_faq_model_list
    except Exception as e:
        logger.error("Error get_dashboard_current_info: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))
