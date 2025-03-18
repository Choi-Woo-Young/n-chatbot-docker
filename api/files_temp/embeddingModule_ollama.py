from api.config.globals import logger
import os
from langchain.storage import LocalFileStore
from langchain_experimental.text_splitter import SemanticChunker
from langchain.embeddings import CacheBackedEmbeddings
from langchain_community.document_loaders import UnstructuredFileLoader
from langchain_community.embeddings import OllamaEmbeddings
from langchain_community.vectorstores import FAISS
from langchain_text_splitters import CharacterTextSplitter


class EmbeddingModule:
    _retriever = None
    _embeddings = None

    def __init__(self):
        self._embeddings = OllamaEmbeddings(model="mistral:latest")
        self.load_embeddings()

    def get_retriever(self):
        if self._retriever is None:
            self.load_embeddings()
        return self._retriever

    # def load_embeddings(self):
    #     # retriever가 이미 존재하면 함수 종료
    #     if self._retriever is not None:
    #         logger.info("Retriever already exists. Exiting the function.")
    #         return

    #     cache_embeddings_dir = os.path.join(os.path.dirname(
    #         os.path.abspath(__file__)), "../.cache/private_embeddings/")
    #     # 기존의 임베딩 데이터가 존재하는 경우, 이를 사용하여 vectorstore 생성
    #     # if os.listdir(cache_embeddings_dir):
    #     #     logger.info("Loading existing embeddings from cache.")
    #     #     vectorstore = FAISS.load_local(cache_embeddings_dir, self._embeddings, allow_dangerous_deserialization=True)
    #     #     self._retriever = vectorstore.as_retriever()
    #     #     logger.info("Retriever has been created from existing embeddings.")
    #     #     return

    #     # files/ 경로 내 모든 파일 읽어오기
    #     folder_path = os.path.join(os.path.dirname(__file__), '../files')
    #     file_names = os.listdir(folder_path)

    #     all_docs = []

    #     for file_name in file_names:
    #         if file_name.startswith('.'):
    #             continue
    #         logger.debug("load_embeddings @@@@@@" + file_name)
    #         file_path = os.path.join(os.path.dirname(
    #             __file__), f'../files/{file_name}')
    #         if not os.path.exists(file_path):
    #             logger.error(
    #                 "File not found, please check the file path : " + file_path)
    #             return

    #         docs = self._load_and_split_file(file_path)
    #         all_docs.extend(docs)

    #     logger.info("@@@@@@@@@@@@@@@@@@@all_docs")
    #     logger.info(all_docs)
    #     self._embed_files(all_docs)
    #     logger.info("File has been embedded and is ready to use.")

    # def _load_and_split_file(self, file_path):
    #     character_text_splitter_files = ["공용서비스QnA.txt", "동호회 운영지침.docx"]
    #     semantic_chunker_files = ["시차출퇴근제운영지침.docx"]

    #     # 파일 이름 추출
    #     file_name = os.path.basename(file_path)
    #     print("_load_and_split_file @@@@@@" + file_name)

    #     # 파일 캐시 디렉토리 생성
    #     cache_files_dir = os.path.join(os.path.dirname(
    #         os.path.abspath(__file__)), "../.cache/private_files/")
    #     os.makedirs(cache_files_dir, exist_ok=True)
    #     file_cache_path = os.path.join(cache_files_dir, file_name)

    #     with open(file_path, "rb") as file:
    #         file_content = file.read()

    #     with open(file_cache_path, "wb") as f:
    #         f.write(file_content)
    #     loader = UnstructuredFileLoader(file_path)

    #     if file_name in character_text_splitter_files:
    #         logger.info("character_text_splitter_files " + file_name)
    #         # 텍스트를 특정 문자를 기준으로 분할
    #         character_text_splitter = CharacterTextSplitter.from_tiktoken_encoder(
    #             separator="\n\n",
    #             chunk_size=1000,
    #             chunk_overlap=100,
    #         )
    #         return loader.load_and_split(text_splitter=character_text_splitter)

    #     elif file_name in semantic_chunker_files:
    #         logger.info("semantic_chunker_files " + file_name)
    #         # 텍스트를 문장 단위로 분할
    #         semantic_chunker = SemanticChunker(
    #             self._embeddings, breakpoint_threshold_type="percentile")
    #         return loader.load_and_split(text_splitter=semantic_chunker)

    #     return loader.load_and_split(text_splitter=splitter)

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

    def _embed_files(self, docs):
        # Embeddings 캐시 디렉토리 생성
        cache_embeddings_dir = os.path.join(os.path.dirname(
            os.path.abspath(__file__)), "../.cache/private_embeddings/")
        os.makedirs(cache_embeddings_dir, exist_ok=True)
        cache_store = LocalFileStore(os.path.abspath(cache_embeddings_dir))
        cached_embeddings = CacheBackedEmbeddings.from_bytes_store(
            self._embeddings, cache_store)
        vectorstore = FAISS.from_documents(docs, cached_embeddings)
        self._retriever = vectorstore.as_retriever()
        logger.info("Retriever has been created.")