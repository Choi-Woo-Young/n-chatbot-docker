import os
import shutil
from fastapi import APIRouter
from pydantic import BaseModel
from typing import Dict, List, Optional

from ..repositories import embedding_file_repository
from api.repositories import unread_chat_message_repository, chatroom_repository
from ..config import models, schemas
from ..config.schemas import UnreadChatMessage
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
from typing import List
from ..modules import nTalkModule
from fastapi import APIRouter, Depends, FastAPI, HTTPException
from sqlalchemy.orm import Session
from api.modules import selfServiceModule
from langchain_openai import ChatOpenAI
from api.utils.handler import CustomChatCallbackHandler
from queue import Queue


schemas.Base.metadata.create_all(bind=engine)

router = APIRouter(
    prefix="/test",
    tags=["test"]
)

class ModelNameModel(BaseModel):
    model_name: str

class EmbeddingParamModel(BaseModel):
    model: str
    chunk_size: int
    overlap_size: int
    file_path: str
    query: str

class EmbeddingModel(BaseModel):
    chat_response: str
    context: List[str]
    page_contents: List[str]



@router.get("/embedding/get-model-name", response_model=ModelNameModel)
def get_model_name():
    try:
        data = {"model_name": g.env_settings.embedding_model}
        return JSONResponse(content=data)
    except Exception as e:
        logger.error(f'get_model_name error: {e}')
        raise HTTPException(status_code=400, detail=str(e))
    

@router.post("/insert-embedding-file")
def insert_into_embeddingFile(db: Session = Depends(get_db)):
    print("===============insert_into_embeddingFile=================")
    try:
        embedding_file_repository.delete_embedding_file(db)

        folder_path = os.path.join(os.path.dirname(__file__), '../files')
        law_index = 0

        for root, dir, files in os.walk(folder_path):
            for file_name in files:
                if file_name.startswith('.'):
                    continue

                relative_path = os.path.relpath(os.path.join(root, file_name), folder_path)
                category_name = relative_path.split('/')[0]

                service_cd = ''
                service_name = ''

                if category_name == '내규':
                    law_index += 1
                    service_cd = 'LAW_' + str(law_index).zfill(3)
                    service_name = os.path.splitext(file_name)[0]
                elif category_name == '공용서비스':
                    service_cd = 'COM_' + os.path.splitext(file_name)[0].split('_')[1]
                    service_name = file_name.split('_')[0]
                
                embedding_file_repository.add_embedding_file(db, relative_path, file_name, file_name, category_name, service_cd, service_name)

    except Exception as e:
        print("Error insert_into_embeddingFile: " + str(e))


@router.post("/embedding", response_model=EmbeddingModel)
def embedding(params: EmbeddingParamModel):
    try:    
        logger.info("===============embedding test=================")
        logger.info(f"params: {params}")

        page_contents = []
        is_all = False

        if not params.file_path or params.file_path.strip() == "" or params.file_path == "all":
            is_all = True
            # 전체 파일 임베딩
            folder_path = os.path.join(os.path.dirname(__file__), '../files')
            # file_names = os.listdir(folder_path)
            file_names = []

            for root, dirs, files in os.walk(folder_path):
                for file_name in files:
                    relative_path = os.path.relpath(os.path.join(root, file_name), folder_path)
                    file_names.append(relative_path)
            logger.debug('***************file_names: ' + str(file_names))

            all_docs = []

            for file_name in file_names:
                if file_name.startswith('.'):
                    continue
                file_path = os.path.join(os.path.dirname(__file__), f'../files/{file_name}')
                if not os.path.exists(file_path):
                    logger.error("File not found, please check the file path : " + file_path)
                    return

                docs = load_and_split_file(file_path, params.chunk_size, params.overlap_size)
                # 문서에 메타데이터 추가
                for doc in docs:
                    doc.metadata = {"source": file_path}
                all_docs.extend(docs)

            retriever = embed_files(all_docs, params.model)

        else:
            # 선택한 파일만 임베딩
            file_path = os.path.join(os.path.dirname(__file__), f'../files/{params.file_path}')
            if not os.path.exists(file_path):
                logger.error("File not found, please check the file path : " + file_path)
                return

            docs = load_and_split_file(file_path, params.chunk_size, params.overlap_size)
            page_contents = [doc.page_content for doc in docs]
            retriever = embed_files(docs, params.model)

        chat_response = chatWithBot(retriever, params.query, is_all)
        # logger.info(f"chat_response: {chat_response}")

        result = {
            "chat_response": chat_response["result"],
            "context": chat_response["context"],
            "page_contents": page_contents
        }
        return JSONResponse(content=result)
    except Exception as e:
        logger.error(f'embedding error: {e}')
        raise HTTPException(status_code=400, detail=str(e))



def load_and_split_file(file_path, chunk_size, overlap_size):
    try:
        loader = UnstructuredFileLoader(file_path)
        character_text_splitter = CharacterTextSplitter(
            separator="\n\n",
            chunk_size=chunk_size,
            chunk_overlap=overlap_size,
        )

        return loader.load_and_split(text_splitter=character_text_splitter)    
    except Exception as e:
        logger.error(f'load_and_split_file: {e}')
        raise HTTPException(status_code=400, detail=str(e))
    
    
def embed_files(docs, model_name):
    try:
        cache_embeddings_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), f"../.cache/test_embeddings/{model_name}")
        # 디렉토리가 존재하면 삭제
        if os.path.exists(cache_embeddings_dir):
            shutil.rmtree(cache_embeddings_dir)

        # 디렉토리를 다시 생성
        os.makedirs(cache_embeddings_dir, exist_ok=True)

        # 로컬 파일 스토어 초기화
        cache_store = LocalFileStore(os.path.abspath(cache_embeddings_dir))

        local_model_path = "./huggingface_model/" + model_name
        embeddings = HuggingFaceEmbeddings(
            model_name=local_model_path,
            model_kwargs={"device": "cpu"},
            encode_kwargs={"normalize_embeddings": True}
        )

        cached_embeddings = CacheBackedEmbeddings.from_bytes_store(embeddings, cache_store)

        # 문서에 메타데이터 추가
        # for doc in docs:
        #     doc.metadata = {"source": file_path}

        vectorstore = FAISS.from_documents(docs, cached_embeddings)
        return vectorstore.as_retriever()

    except Exception as e:
        logger.error(f'embed_files: {e}')
        raise HTTPException(status_code=400, detail=str(e))
    
    
def chatWithBot(retriever, query, is_all):
    try:
        chat_prompt = ChatPromptTemplate.from_messages(
            [
                ("system", """Answer the question in Korean, using ONLY the following context, conversation history and not your training data. If you don't know the answer just say you don't know. DON'T make anything up.

            Context: {context} """),
                ("human", "Question:{question}")
            ]
        )
        docs = retriever.invoke(query)
        # source_path = list(set(doc.metadata.get("source", "Unknown") for doc in docs))
        source_path = docs[0].metadata.get("source", "Unknown")
        logger.info('***************source_path: '+str(source_path))

        ######
        # context = format_docs(docs)
        # return {"context": [doc.page_content for doc in docs], "result": ''}
        ######
        if is_all:
            loader = UnstructuredFileLoader(source_path)
            docs = loader.load()
        
        context = format_docs(docs)

        # original_sources = [doc.metadata.get("source", "Unknown") for doc in docs]
        # logger.debug('***************original_sources: ' + str(original_sources))
        # context = format_docs(original_sources)

        chat_llm = ChatOpenAI(
            api_key=g.env_settings.openai_api_key,
            base_url=g.env_settings.openai_base_url,
            model=g.env_settings.openai_chat_model,  # "gpt-3.5-turbo",
            temperature=0.1,
            streaming=True,
            max_retries=1,
            timeout=60,
            callbacks=[
                CustomChatCallbackHandler(Queue()),
            ],
        )

        chain = (
            chat_prompt 
            | chat_llm 
            | StrOutputParser())
        
        result = chain.invoke({"context":context , "question":query})
        
        return {"context": [doc.page_content for doc in docs], "result": result}
    except Exception as e:
        logger.error(f'chatWithBot: {e}')
        raise HTTPException(status_code=400, detail=str(e))
    
    
def format_docs(docs):
    return "\n\n".join(document.page_content for document in docs)

@router.get("/ntalk")
def call_ntalk(chat_id: int , db: Session = Depends(get_db)):
    try:
        nTalkModule.thread_send_msg_to_messenger(db,  "SUPPORT", chat_id)
    except Exception as e:
        logger.error(f'call_ntalk error: {e}')
        raise HTTPException(status_code=400, detail=str(e))


@router.post("/self-service")
async def self_service(service_id: str, user_id: str, db: Session = Depends(get_db)):
    try:
        logger.info(f'self_service: {service_id}, {user_id}')
        return selfServiceModule.reset_password(service_id,user_id,db)
    except Exception as e:
        logger.error(f'ask_chatbot error: {e}')
        return PlainTextResponse("챗봇에게 질문하는 중 오류가 발생했습니다.")
        
     
@router.get("/unread-msg-notice", response_model=Optional[List[models.UnreadChatMessage]])
def getUnreadMsgNotice(db: Session = Depends(get_db)):
    try:
        # 안 읽은 채팅방 중 지원대기(CRSTT030), 지원중(CRSTT040)인 채팅방만 조회
        unread_list = unread_chat_message_repository.get_unread_chat_message_of_support(db)
        
        return unread_list
    except Exception as e:
        logger.error('/unread-msg-notice:'+str(e))
        raise HTTPException(status_code=400, detail=str(e))
    

@router.get("/close-msg-notice")
def getCloseMsgNotice(db: Session = Depends(get_db)):
    try:
        # 봇과 채팅중(CRSTT010)인 채팅방만 조회
        chatroom_repository.get_support_chatroom_notice(db)
    except Exception as e:
        logger.error('/close-msg-notice:'+str(e))
        raise HTTPException(status_code=400, detail=str(e))