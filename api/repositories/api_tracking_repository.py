# import logging
from typing import List
from sqlalchemy.orm import Session
from ..config.schemas import ApiTracking
from ..config import models
from api.config.globals import logger
import json
from fastapi import HTTPException

# api 호출 이력 저장
async def add_api_tracking(db: Session, url: str, method: str, status_code: int, input: dict, output: dict, user_id: str) -> models.ApiTrackingModel:
    try:
        # input_params와 output_data를 JSON 문자열로 직렬화
        input_json = json.dumps(input, ensure_ascii=False)
        output_json = json.dumps(output, ensure_ascii=False)

        api_tracking_schema = ApiTracking(
            request_url=url,
            method=method,
            response_status_code=str(status_code),
            input=input_json,
            output=output_json,
            created_by=user_id,
        )
        
        db.add(api_tracking_schema)
        db.flush()
        db.commit()
        
        return models.ApiTrackingModel.model_validate(api_tracking_schema)
    except Exception as e:
        logger.error(f"add_api_tracking: {e}")
        db.rollback()
        raise HTTPException(status_code=500, detail=str(e))