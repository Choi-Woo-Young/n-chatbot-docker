# import logging
from typing import List, Optional
from fastapi import HTTPException
from sqlalchemy.orm import Session
from ..config.schemas import EmbeddingFile
from ..config import models
from sqlalchemy import or_, and_
from api.config.globals import logger
import api.config.globals as g


def delete_embedding_file(db: Session):
    try:
        db.query(EmbeddingFile).delete()
        db.commit()
        db.flush()
    except Exception as e:
        logger.error(f"delete_embedding_file: {e}")
        db.rollback()
        raise HTTPException(status_code=500, detail=str(e))


# 임베딩 파일 데이터 추가
def add_embedding_file(db: Session, file_path: str, file_name: str, orign_file_name: str, category_name: str, service_cd: str, service_name: str) -> models.EmbeddingFileModel:
    try:
        embedding_file_schema = EmbeddingFile(
            file_path=file_path, file_name=file_name, orign_file_name=orign_file_name, category_name=category_name, service_cd=service_cd, service_name=service_name, embedding_yn=False)
        db.add(embedding_file_schema)
        db.commit()
        db.flush()
        return models.EmbeddingFileModel.model_validate(embedding_file_schema)
    except Exception as e:
        logger.error(f"add_embedding_file: {e}")
        db.rollback()
        raise HTTPException(status_code=500, detail=str(e))


def get_unembedded_files(db: Session) -> List[models.EmbeddingFileModel]:
    try:
        conditions = []
        conditions.append(EmbeddingFile.delete_yn.isnot(True))
        conditions.append(EmbeddingFile.embedding_yn.isnot(True))

        query = db.query(EmbeddingFile).order_by(EmbeddingFile.file_id.asc())
        if conditions:
            query = query.where(and_(*conditions))

        embeddingFile_schema_list = query.all()
        result_list = []
        for embeddingFile_schema in embeddingFile_schema_list:
            result_list.append(
                models.EmbeddingFileModel.model_validate(embeddingFile_schema))
        db.flush()
        return result_list

    except Exception as e:
        logger.error(f"get_unembedded_files: {e}")
        raise HTTPException(status_code=500, detail=str(e))


def update_embedding_yn(db: Session, file_id: int, embedding_yn: bool) -> Optional[models.EmbeddingFileModel]:
    try:
        embedding_file_schema = db.query(EmbeddingFile).filter(
            EmbeddingFile.file_id == file_id).first()

        if not embedding_file_schema:
            return None

        embedding_file_schema.embedding_yn = embedding_yn

        db.commit()
        db.flush()

        return models.EmbeddingFileModel.model_validate(embedding_file_schema)
    except Exception as e:
        logger.error(f"update_embedding_yn: {e}")
        db.rollback()
        raise HTTPException(status_code=500, detail=str(e))


def get_embedding_file_by_service_cd(db: Session, service_cd: str) -> List[models.EmbeddingFileModel]:
    try:
        conditions = []
        conditions.append(EmbeddingFile.delete_yn.isnot(True))
        conditions.append(EmbeddingFile.service_cd == service_cd)

        query = db.query(EmbeddingFile).order_by(EmbeddingFile.file_id.asc())
        if conditions:
            query = query.where(and_(*conditions))

        embedding_file_schema = query.first()
        return models.EmbeddingFileModel.model_validate(embedding_file_schema)

    except Exception as e:
        logger.error(f"get_embedding_file_by_service_cd: {e}")
        raise HTTPException(status_code=500, detail=str(e))


def get_embedding_file_list(db: Session):
    try:
        conditions = []
        conditions.append(EmbeddingFile.delete_yn.isnot(True))

        query = db.query(EmbeddingFile).order_by(
            EmbeddingFile.service_cd.asc())
        if conditions:
            query = query.where(and_(*conditions))

        embedding_file_schema_list = query.all()
        result_list = []
        for embedding_file_schema in embedding_file_schema_list:
            result_list.append(
                models.EmbeddingFileModel.model_validate(embedding_file_schema))
        db.flush()

        g.service_list = []
        g.service_desc_list = []
        for embedding_file in result_list:
            if "LAW" in embedding_file.service_cd:
                g.service_list.append(
                    {"type": "SERVICE_CD", "name": "내규", "value": "LAW"})
                g.service_desc_list.append(
                    {"service_cd": "LAW", "service_name": "내규",  "service_describe": "회사 내부 규정 및 지침을 빠르고 정확하게 검색하고 확인할 수 있는 서비스."})
            else:
                g.service_list.append(
                    {"type": "SERVICE_CD", "name": embedding_file.service_name, "value": embedding_file.service_cd})
                g.service_desc_list.append({"service_cd": embedding_file.service_cd,
                                    "service_name": embedding_file.service_name, "service_describe": embedding_file.service_desc})

        # g.service_list 중복제거
        g.service_list = [dict(t) for t in {tuple(d.items()) for d in g.service_list}]
        g.service_desc_list = [dict(t) for t in {tuple(d.items()) for d in g.service_desc_list}]
        
        logger.info(f"service_list: {g.service_list}")
        logger.info(f"service_desc_list: {g.service_desc_list}")
        
        return result_list
    except Exception as e:
        logger.error(f"get_service_cd_list: {e}")
        raise HTTPException(status_code=500, detail=str(e))
