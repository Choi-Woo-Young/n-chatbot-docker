from typing import Optional
from sqlalchemy import and_, or_
from sqlalchemy.orm import Session
import api.config.globals  as g
from api.modules import gwUserModule
from ..config.schemas import Chatroom, User
from ..config import models, schemas
from fastapi import APIRouter, Depends, FastAPI, HTTPException
from api.config.database import get_db
from api.config.globals import logger


def get_user_by_email(db: Session, user_email: str) -> models.UserModel:
    print('get_user : '+user_email)
    result_users = db.query(schemas.User).where(
        User.email == user_email).first()
    print('get_user : '+str(result_users))
    db.flush()
    return models.UserModel.model_validate(result_users)


def get_user_by_user_id(db: Session, user_id: int) -> models.UserModel:
    # print('get_user : '+str(user_id))
    result_users = db.query(schemas.User).where(
        User.user_id == user_id).first()
    db.flush()
    return models.UserModel.model_validate(result_users)


def get_user_by_role_cd_list(db: Session, role_cd_list: list[str], user_id: Optional[int]) -> models.UserModel:
    conditions = []

    # 본인 제외
    if user_id:
        conditions.append(User.user_id != user_id)

    conditions.append(User.role_cd.in_(role_cd_list))
    conditions.append(User.delete_yn.isnot(True))

    users = db.query(schemas.User).where(and_(*conditions)).all()
    result_users = []
    for user_schema in users:
        result_users.append(models.UserModel.model_validate(user_schema))
    db.flush()
    return result_users


def get_user_by_ip(db: Session, ip: str) -> models.UserModel:
    conditions = []
    conditions.append(User.delete_yn.isnot(True))
    conditions.append(User.ip == ip)
    result_users = db.query(schemas.User).where(and_(*conditions)).first()
    db.flush()
    if (result_users == None):
        return None
    return models.UserModel.model_validate(result_users)


# 담당자 목록 조회
def get_manager_list(db: Session, user_id: int, chat_id: int, search_keyword: str) -> models.UserModel:
    conditions = []
    conditions.append(User.role_cd.in_(['MGR', 'ADM', 'HELP']))
    conditions.append(User.user_id != user_id)

    if chat_id:
        conditions.append(User.user_id != db.query(Chatroom).filter(Chatroom.chat_id == chat_id).first().user_id)

    if search_keyword:
        conditions.append(
            or_(
                User.user_nm.ilike('%'+search_keyword+'%'),
                User.mng_services.ilike('%'+search_keyword+'%')
            )
        )

    query = db.query(User).order_by(User.user_nm.asc())
    if conditions:
        query = query.where(and_(*conditions))

    user_schema_list = query.all()
    result_users = []
    for user_schema in user_schema_list:
        result_users.append(
            models.UserModel.model_validate(user_schema))

    db.flush()
    return result_users


def get_all_users(db: Session) -> models.UserModel:
    conditions = []
    conditions.append(User.delete_yn.isnot(True))
    conditions.append(User.role_cd != "BOT")
    result_users = db.query(schemas.User).where(and_(*conditions)).all()
    db.flush()
    if (result_users == None):
        return None
    return models.UserModel.model_validate(result_users)


def register_user(user: models.UserModel, db: Session = Depends(get_db)) -> models.UserModel:
    user_schema = schemas.User(
        user_nm=user.user_nm,
        email=user.email,
        role_cd=user.role_cd,
        mng_services=user.mng_services,
        ip=user.ip,
        delete_yn=user.delete_yn
    )
    db.add(user_schema)
    db.commit()
    db.flush()
    return models.UserModel.model_validate(user_schema)


def get_all_user_list(db: Session):
    try:
        all_user_schema_list = db.query(schemas.User).filter(
            schemas.User.delete_yn.isnot(True)).all()

        all_user_moddel_list = []
        for user_schema in all_user_schema_list:
            all_user_moddel_list.append(
                models.UserModel.model_validate(user_schema))
        return all_user_moddel_list
    except Exception as e:
        logger.error(f"get_all_user_list: {e}")
        raise HTTPException(status_code=500, detail="사용자 정보 조회에 실패하였습니다.")


def sync_user(db: Session):
    try:
        environment = g.env_settings.environment
        if environment != "production":
            return

        all_user_schema_list = db.query(schemas.User).filter(
            schemas.User.delete_yn.isnot(True),
            schemas.User.user_id != 0).all()
        all_gw_user_list = gwUserModule.get_all_gw_user_list()

        # logger.info(f"all_user_schema_list: {all_user_schema_list}")
        # logger.info(f"all_gw_user_list: {all_gw_user_list}")
        
        #return {"all_user_schema_list": all_user_schema_list, "all_gw_user_list": all_gw_user_list}
        
        # 삭제된 사용자 목록
        delete_usr_model_list = []
        # 등록된 사용자 목록
        register_usr_model_list = []

        # 사번 목록
        gw_user_emp_no_set = {user.emp_no for user in all_gw_user_list}
        db_user_emp_no_set = {user.emp_no for user in all_user_schema_list}

        # all_user_schema_list 있지만 all_gw_user_list에는 없는 사용자 삭제
        for user in all_user_schema_list:
            if user.emp_no not in gw_user_emp_no_set:
                delete_usr_model_list.append(
                    models.UserModel.model_validate(user))
                user.delete_yn = True

        for gw_user in all_gw_user_list:
            if gw_user.emp_no not in db_user_emp_no_set:
                # all_gw_user_list에는 있지만 all_user_schema_list에 없는 사용자 추가
                user = schemas.User(
                    user_nm=gw_user.user_nm,
                    emp_no=gw_user.emp_no,
                    email=gw_user.email,
                    ip=gw_user.ip,
                    dept_nm=gw_user.dept_nm,
                    position_nm=gw_user.position_nm,
                    # hp_num=gw_user.hp_num,
                    delete_yn=False,
                    role_cd="USR"
                )
                register_usr_model_list.append(
                    models.UserModel.model_validate(user))
                db.add(user)
            else:
                # 기존에 있던 사용자는 ip, dept_nm, position_nm 변경된 경우만 업데이트
                user = db.query(schemas.User).filter(
                    schemas.User.emp_no == gw_user.emp_no).first()
                if user:
                    user.ip = gw_user.ip
                    user.dept_nm = gw_user.dept_nm
                    user.position_nm = gw_user.position_nm

        db.commit()

        return {"delete_usr_model_list": delete_usr_model_list, "register_usr_model_list": register_usr_model_list}
    except Exception as e:
        logger.error(f"get_all_user_list: {e}")
        raise HTTPException(status_code=500, detail="사용자 정보 조회에 실패하였습니다.")


def update_guide_tour_info(db: Session, user: models.UserModel):
    try:
        logger.info(f"update_guide_tour_info: {user}")
        guide_tour_json = user.guide_tour_json
        logger.info(f"guide_tour_json: {guide_tour_json}")  
        
        user_schema = db.query(schemas.User).filter(schemas.User.user_id == user.user_id).first()
        user_schema.guide_tour_json = guide_tour_json
        db.commit()
        return {"result": "success"}
    except Exception as e:
        logger.error(f"update_guide_tour_info: {e}")
        raise HTTPException(status_code=500, detail="가이드 투어 정보 업데이트에 실패하였습니다.")
