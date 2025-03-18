from fastapi import HTTPException
from sqlalchemy import func, case
from sqlalchemy.orm import Session
from api.config.globals import logger
from ..config.schemas import Chatroom


def get_dashboard_current_info(db: Session, user_id: int) -> dict:
    try:
        print('get_dashboard_current_info - user_id : ' + str(user_id))
        query = (
            db.query(
                func.sum(case((Chatroom.state_cd == 'CRSTT010', 1), else_=0)).label('crstt010_count'),  #봇과재팅중
                func.sum(case((Chatroom.state_cd == 'CRSTT020', 1), else_=0)).label('crstt020_count'),  #이관종료
                func.sum(case((Chatroom.state_cd == 'CRSTT030', 1), else_=0)).label('crstt030_count'),  #지원대기
                func.sum(case((Chatroom.state_cd == 'CRSTT040', 1), else_=0)).label('crstt040_count'),  #지원중
                func.sum(case((Chatroom.state_cd == 'CRSTT050', 1), else_=0)).label('crstt050_count')   #종료
            )
            .filter(Chatroom.user_id == user_id)
            .filter(Chatroom.delete_yn.isnot(True))
        )
        result = query.one()
        result_dict = result._asdict()
        return result_dict
    except Exception as e:
        logger.error("Error get_dashboard_current_info: " + str(e))
        db.rollback()
        db.flush()
        raise HTTPException(status_code=500, detail=str(e))
