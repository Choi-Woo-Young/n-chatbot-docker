from typing import Dict

from fastapi import HTTPException
from api.modules.embeddingModule import EmbeddingModule
from api.config.globals import logger
import api.config.globals  as g

def get_retriever():
    try:
        if g.retriever is None:
            g.retriever = EmbeddingModule().get_retriever()
            logger.info("EmbeddingModule loaded")
        return g.retriever
    except Exception as e:
        logger.error(f"get_retriever: {e}")
        raise HTTPException(status_code=500, detail=str(e)) 


