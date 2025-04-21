import os
import json
from fastapi import HTTPException
import torch
import numpy as np
from transformers import AutoTokenizer, AutoModel
from langchain_community.vectorstores import FAISS
from langchain.storage import LocalFileStore
from langchain.embeddings.cache import CacheBackedEmbeddings, Embeddings
from api.config.globals import logger
from langchain_community.document_loaders import UnstructuredFileLoader
from langchain_text_splitters import CharacterTextSplitter
# from langchain.retrievers import BM25Retriever, EnsembleRetriever
from langchain_huggingface import HuggingFaceEmbeddings
import api.config.globals as g

from ..repositories import embedding_file_repository
from api.config.database import SessionLocal


# 유사도 높은 K 개의 문서를 검색합니다.
# k = 10

class KoBertEmbeddings(Embeddings):
    def __init__(self, model_path):
        self.tokenizer = AutoTokenizer.from_pretrained(model_path)
        self.model = AutoModel.from_pretrained(model_path)

    def embed_documents(self, texts):
        inputs = self.tokenizer(
            texts, return_tensors='pt', padding=True, truncation=True)
        with torch.no_grad():
            outputs = self.model(**inputs)
        embeddings = outputs.last_hidden_state.mean(dim=1)
        return embeddings.numpy()

    def embed_query(self, query):
        inputs = self.tokenizer(
            query, return_tensors='pt', padding=True, truncation=True)
        with torch.no_grad():
            outputs = self.model(**inputs)
        embeddings = outputs.last_hidden_state.mean(dim=1)
        return embeddings.numpy()


class CustomCacheBackedEmbeddings(CacheBackedEmbeddings):
    def _value_serializer(self, value):
        if isinstance(value, np.ndarray):
            return json.dumps(value.tolist()).encode()
        return super()._value_serializer(value)

    def _value_deserializer(self, value):
        try:
            value_list = json.loads(value.decode())
            return np.array(value_list)
        except (json.JSONDecodeError, ValueError):
            return super()._value_deserializer(value)


class EmbeddingModule:
    _retriever = None
    _embeddings = None
    _openai = None

    def __init__(self):
        self.load_embeddings()

    # TODO 코드 투어 - [임베딩] 120. retriever 있는지 다시 체크 후 없으면 임베딩
    def get_retriever(self):
        if self._retriever is None:
            # 임베딩 >> 
            self.load_embeddings()
        return self._retriever

    # TODO 코드 투어 - [임베딩] 130. 임베딩
    def load_embeddings(self):
        try:
            if self._retriever is not None:
                logger.info("Retriever already exists. Existing the function.")
                return

            # DB에서 임베딩되지 않은 대상 파일 목록 가져오기
            db = SessionLocal()
            unembedded_files = embedding_file_repository.get_unembedded_files(
                db)
            logger.info(f'unembedded_files: {unembedded_files}')

            # 임베딩되지 않은 파일 목록이 없으면 기존 임베딩 데이터 로드
            if len(unembedded_files) == 0:
                cache_embeddings_dir = os.path.join(os.path.dirname(
                    os.path.abspath(__file__)), '..', '.cache','private_embeddings/')
                index_file_path = os.path.join(
                    cache_embeddings_dir, "index.faiss")
                os.makedirs(cache_embeddings_dir, exist_ok=True)

                logger.info(f"cache_embeddings_dir: {cache_embeddings_dir}")

                if os.path.exists(index_file_path):
                    # 인덱스가 존재하면 로드
                    vectorstore = FAISS.load_local(
                        cache_embeddings_dir,
                        HuggingFaceEmbeddings(
                            model_name="./huggingface_model/" + g.env_settings.embedding_model,
                            model_kwargs={"device": "cpu"},
                            encode_kwargs={"normalize_embeddings": True}
                        ),
                        allow_dangerous_deserialization=True
                    )
                    self._retriever = vectorstore.as_retriever()
                    logger.info("Retriever loaded from existing cache.")
                    return
                else:
                    logger.warning(
                        "FAISS index not found. Skipping retriever load.")

            # 임베딩되지 않은 파일 목록이 있으면 임베딩
            all_docs = []

            chunk_size = 500
            overlap_size = 150

            # 대상 데이터에 따라 chunk_size와 overlap_size 설정
            for unembedded_file in unembedded_files:
                if unembedded_file.category_name == "내규":
                    chunk_size = 1800
                    overlap_size = 100
                elif unembedded_file.category_name == "공용서비스":
                    chunk_size = 400
                    overlap_size = 150

                # 임베딩 대상 로드 및 split
                path = os.path.join(os.path.dirname(
                    __file__), '..', 'files', unembedded_file.file_path)
                split_docs = self._load_and_split_file(
                    path, chunk_size, overlap_size)

                # 200. chunking 된 문서에 메타데이터 추가
                for doc in split_docs:
                    doc.metadata = {"file_path": unembedded_file.file_path, "category_name": unembedded_file.category_name,
                                    "service_cd": unembedded_file.service_cd, "service_name": unembedded_file.service_name}
                all_docs.extend(split_docs)
            
            # 임베딩 대상 문서 임베딩
            self._embed_files(all_docs)

            # embedding_yn 업데이트
            for unembedded_file in unembedded_files:
                embedding_file_repository.update_embedding_yn(
                    db, unembedded_file.file_id, True)

            logger.info("File has been embedded and is ready to use.")
        except Exception as e:
            logger.error(f"load_embeddings: {e}")
            raise HTTPException(status_code=500, detail=str(e))
        finally:
            db.close()  # 세션 닫기

    def _extract_docs_from_files(self, folder_path, file_names, chunk_size, overlap_size):
        try:
            all_docs = []

            for file_name in file_names:
                if file_name.startswith('.'):
                    continue

                file_path = os.path.join(folder_path, file_name)
                if not os.path.exists(file_path):
                    logger.error(
                        "File not found, please check the file path : " + file_path)
                    return

                docs = self._load_and_split_file(
                    file_path, chunk_size, overlap_size)
                # 문서에 메타데이터 추가
                for doc in docs:
                    doc.metadata = {"source": file_path}
                all_docs.extend(docs)

            logger.debug("all_docs: " + str(all_docs))

            return all_docs
        except Exception as e:
            logger.error(f"_extract_docs_from_files: {e}")
            raise HTTPException(status_code=500, detail=str(e))

    # TODO 코드 투어 - [임베딩] 140. 임베딩 대상 로드 및 split
    def _load_and_split_file(self, file_path, chunk_size, overlap_size):
        try:
            # 임베딩 대상 첨부파일명
            file_name = os.path.basename(file_path)

            # 임베딩 대상 파일 캐시 디렉토리 생성
            cache_files_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), "../.cache/private_files/")
            os.makedirs(cache_files_dir, exist_ok=True)
            file_cache_path = os.path.join(cache_files_dir, file_name)

            # 임베딩 대상 파일을 캐시 디렉토리에 저장
            with open(file_path, "rb") as file:
                file_content = file.read()

            with open(file_cache_path, "wb") as f:
                f.write(file_content)

            # [keyword] document loader
            loader = UnstructuredFileLoader(file_path)

            # [keyword] splitter
            character_text_splitter = CharacterTextSplitter(
                separator="\n\n",
                chunk_size=chunk_size,
                chunk_overlap=overlap_size,
            )

            return loader.load_and_split(text_splitter=character_text_splitter)
        except Exception as e:
            logger.error(f"_load_and_split_file: {e}")
            raise HTTPException(status_code=500, detail=str(e))

    def _embed_texts(self, docs):

        try:            # Extract text content from documents
            texts = [doc.page_content for doc in docs]

            # Ensure the texts are in the correct format
            if not isinstance(texts, list):
                texts = [texts]

            # Ensure each item in texts is a string
            texts = [str(text) for text in texts]

            responses = self._openai.embeddings.create(
                input=texts,
                model="text-embedding-3-small"
            )
            embeddings = [data.embedding for data in responses.data]
            return embeddings
        except Exception as e:
            logger.error(f"_embed_texts: {e}")
            raise HTTPException(status_code=500, detail=str(e))

    # TODO 코드 투어 - [임베딩] 150. 임베딩 대상 문서 임베딩
    def _embed_files(self, docs):
        if not docs:
            logger.warning("임베딩할 문서가 없습니다. 벡터스토어 생성/업데이트를 건너뜁니다.")
            return
        try:
            # 임베딩 대상 문서 임베딩 캐시 디렉토리 생성
            cache_embeddings_dir = os.path.join(os.path.dirname(
                os.path.abspath(__file__)), "../.cache/private_embeddings/")
            os.makedirs(cache_embeddings_dir, exist_ok=True)
            cache_store = LocalFileStore(os.path.abspath(cache_embeddings_dir))

            # 임베딩 대상 모델 경로 설정
            local_model_path = "./huggingface_model/" + g.env_settings.embedding_model

            # HuggingFace 임베딩 초기화
            embeddings = HuggingFaceEmbeddings(
                model_name=local_model_path,
                model_kwargs={"device": "cpu"},
                encode_kwargs={"normalize_embeddings": True}
            )

            # 임베딩 대상 모델 캐시 저장
            cached_embeddings = CacheBackedEmbeddings.from_bytes_store(
                embeddings, cache_store)

            if os.path.exists(os.path.join(cache_embeddings_dir, "index.faiss")):
                logger.info("기존 벡터스토어가 발견되었습니다. 해당 벡터스토어를 로드합니다.")
                vectorstore = FAISS.load_local(
                    cache_embeddings_dir, cached_embeddings, allow_dangerous_deserialization=True)
                # 기존 벡터스토어에 임베딩 대상 문서 추가
                vectorstore.add_documents(docs)
            else:
                logger.info("기존 벡터스토어를 찾을 수 없어 새로 생성합니다.")
                # 백터화 된 임베딩 대상 문서를 cache_store캐시 저장
                vectorstore = FAISS.from_documents(docs, cached_embeddings)

            # Save FAISS index, docstore, and index_to_docstore_id to disk
            vectorstore.save_local(cache_embeddings_dir)
            
            # vectorstore를 retriever로 변환
            self._retriever = vectorstore.as_retriever()
            logger.info("retriver가 성공적으로 생성되었습니다.")
        except Exception as e:
            logger.error(f"_embed_files: {e}")
            raise HTTPException(status_code=500, detail=str(e))
