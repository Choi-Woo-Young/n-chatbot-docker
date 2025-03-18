import os
import shutil
from fastapi import APIRouter
from pydantic import BaseModel

from api.config import models
from api.repositories import feedback_repository

from ..repositories import embedding_file_repository
from ..config import schemas
from ..config.database import engine
from api.config.globals import logger
from api.config.database import get_db
import api.config.globals  as g
from fastapi.responses import JSONResponse, PlainTextResponse
from langchain_community.document_loaders import UnstructuredFileLoader
from langchain_text_splitters import CharacterTextSplitter
from langchain_community.vectorstores import FAISS
from langchain.storage import LocalFileStore
from langchain.embeddings.cache import CacheBackedEmbeddings
from langchain_core.prompts import ChatPromptTemplate
from langchain_huggingface import HuggingFaceEmbeddings
from langchain_core.output_parsers import StrOutputParser
from typing import List, Optional
from ..modules import nTalkModule
from fastapi import APIRouter, Depends, FastAPI, HTTPException
from sqlalchemy.orm import Session
from api.modules import selfServiceModule
from langchain_openai import ChatOpenAI
from api.utils.handler import CustomChatCallbackHandler
from queue import Queue


schemas.Base.metadata.create_all(bind=engine)

router = APIRouter(
    prefix="/feedback",
    tags=["feedback"]
)

@router.post("/add", response_model=Optional[models.FeedbackModel])
async def add_feedback(feedback: models.FeedbackModel, db: Session = Depends(get_db)):
    print("===============add feedback=================")
    try:
        result = feedback_repository.add_feedback(db, feedback.created_by, feedback.contents, feedback.image_path)
        if result == None:
            return None
        
        return result
    except Exception as e:
        print("Error add_feedback: " + str(e))