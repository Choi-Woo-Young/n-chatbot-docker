from api.config.globals import logger
import os
from openai import OpenAI
from langchain.storage import LocalFileStore
from langchain_experimental.text_splitter import SemanticChunker
from langchain.embeddings import CacheBackedEmbeddings
from langchain_community.document_loaders import UnstructuredFileLoader
from langchain_community.embeddings import OllamaEmbeddings
from langchain_community.vectorstores import FAISS
from langchain_text_splitters import CharacterTextSplitter
from langchain_openai import OpenAIEmbeddings
import api.config.globals  as g


class EmbeddingModule:
    _retriever = None
    _embeddings = None
    _openai = None

    def __init__(self):
        self._openai = OpenAI(
            api_key=g.env_settings.openai_api_key, base_url=g.env_settings.openai_base_url)
        self.load_embeddings()

    def get_retriever(self):
        if self._retriever is None:
            self.load_embeddings()
        return self._retriever

    def load_embeddings(self):
        # retriever가 이미 존재하면 함수 종료
        if self._retriever is not None:
            logger.info("Retriever already exists. Exiting the function.")
            return

        # files/ 경로 내 모든 파일 읽어오기
        folder_path = os.path.join(os.path.dirname(__file__), '../files')
        file_names = os.listdir(folder_path)

        all_docs = []

        for file_name in file_names:
            if file_name.startswith('.'):
                continue
            logger.debug("load_embeddings @@@@@@" + file_name)
            file_path = os.path.join(os.path.dirname(
                __file__), f'../files/{file_name}')
            if not os.path.exists(file_path):
                logger.error(
                    "File not found, please check the file path : " + file_path)
                return

            docs = self._load_and_split_file(file_path)
            all_docs.extend(docs)

        logger.info("@@@@@@@@@@@@@@@@@@@all_docs")
        logger.info(all_docs)
        self._embed_files(all_docs)
        logger.info("File has been embedded and is ready to use.")

    def _load_and_split_file(self, file_path):
        # character_text_splitter_files = ["공용서비스QnA.txt", "동호회 운영지침.docx"]
        semantic_chunker_files = ["시차출퇴근제운영지침.docx"]

        # 파일 이름 추출
        file_name = os.path.basename(file_path)
        print("_load_and_split_file @@@@@@" + file_name)

        # 파일 캐시 디렉토리 생성
        cache_files_dir = os.path.join(os.path.dirname(
            os.path.abspath(__file__)), "../.cache/private_files/")
        os.makedirs(cache_files_dir, exist_ok=True)
        file_cache_path = os.path.join(cache_files_dir, file_name)

        with open(file_path, "rb") as file:
            file_content = file.read()

        with open(file_cache_path, "wb") as f:
            f.write(file_content)
        loader = UnstructuredFileLoader(file_path)

        character_text_splitter = CharacterTextSplitter(
            separator="\n\n",
            chunk_size=500,
            chunk_overlap=100,
        )

        if file_name in semantic_chunker_files:
            logger.info("semantic_chunker_files " + file_name)
            semantic_chunker = SemanticChunker(
                self._embeddings, breakpoint_threshold_type="percentile")
            return loader.load_and_split(text_splitter=semantic_chunker)
        return loader.load_and_split(text_splitter=character_text_splitter)

    def _embed_texts(self, docs):
                # Extract text content from documents
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

    def _embed_files(self, docs):
        # Embeddings 캐시 디렉토리 생성
        cache_embeddings_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), "../.cache/private_embeddings/")
        os.makedirs(cache_embeddings_dir, exist_ok=True)
        cache_store = LocalFileStore(os.path.abspath(cache_embeddings_dir))
        embeddings = OpenAIEmbeddings(api_key="sk-")
        cached_embeddings = CacheBackedEmbeddings.from_bytes_store(embeddings, cache_store)
        vectorstore = FAISS.from_documents(docs, cached_embeddings)
        self._retriever = vectorstore.as_retriever()
        logger.info("Retriever has been created.")
