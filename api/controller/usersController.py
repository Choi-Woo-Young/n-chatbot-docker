import logging
from typing import Dict, List, Optional
from fastapi import APIRouter, Depends, FastAPI, HTTPException
from sqlalchemy.orm import Session
from ..config import models, schemas
from ..repositories import user_repository
from ..config.database import SessionLocal, engine
import json
from api.config.globals import logger
from api.config.database import get_db
schemas.Base.metadata.create_all(bind=engine)

router = APIRouter(
    prefix="/users",
    tags=["users"]
)


@router.post("/sign-in", response_model=Optional[models.UserModel])
async def sign_in(user: models.UserModel, db: Session = Depends(get_db)):
    try:
        print('[/sign-in] user: '+user.model_dump_json())

        user_model = user_repository.get_user_by_email(
            db, user_email=user.email)
        print('DB조회 후 : '+user_model.model_dump_json())
        if user_model == None:
            return None
        else:
            print('DB조회 후 : '+user_model.model_dump_json())
        return user_model
    except Exception as e:
        logger.error(f'sign_in error: {e}')
        raise HTTPException(status_code=400, detail=str(e))


@router.post("/ip", response_model=Optional[models.UserModel])
async def get_user_by_ip(user: models.UserModel, db: Session = Depends(get_db)):
    try:
        print('[/users/ip] ip: '+user.ip)
        user_model = user_repository.get_user_by_ip(db, ip=user.ip)
        if user_model == None:
            return None
        return user_model
    except Exception as e:
        logger.error(f'get_user_by_ip error: {e}')
        raise HTTPException(status_code=400, detail=str(e))


@router.get("/sync", response_model=Optional[dict])
def sync_user(db: Session = Depends(get_db)):
    try:
        logger.info('/users/sync')
        result = user_repository.sync_user(db)
        return result
    except Exception as e:
        logger.error(f'users/sync error: {e}')
        raise HTTPException(status_code=400, detail=str(e))

@router.post("/guide-tour-info", response_model=Optional[dict])
def guide_tour_info(user: models.UserModel, db: Session = Depends(get_db)):
    try:
        logger.info('/users/guide-tour-info')
        result = user_repository.update_guide_tour_info(db, user)
        return result
    except Exception as e:
        logger.error(f'users/guide-tour-info error: {e}')
        raise HTTPException(status_code=400, detail=str(e))
    
@router.get("/{user_id}", response_model=models.UserModel)
def get_user_by_user_id(user_id: int, db: Session = Depends(get_db)):
    try:
        logger.info(f'/users/{user_id}')
        user = user_repository.get_user_by_user_id(db, user_id)
        return user
    except Exception as e:
        logger.error(f'get_user_by_user_id error: {e}')
        raise HTTPException(status_code=400, detail=str(e))