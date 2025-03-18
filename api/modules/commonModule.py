from api.config.database import get_db
from api.repositories import api_tracking_repository
from api.config.globals import logger

async def api_tracking(url: str, method: str, status_code: int, input: dict, output: dict, user_id: str):
    try:
        # api 호출 이력 DB저장
        db = next(get_db())
        result = await api_tracking_repository.add_api_tracking(db, url, method, status_code, input, output, user_id)
        return result
    except Exception as e:
        logger.error(f"api_tracking: {e}")
    finally:
        db.close()