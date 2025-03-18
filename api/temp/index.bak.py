from langchain.embeddings import CacheBackedEmbeddings
from langchain.storage import LocalFileStore
from fastapi import FastAPI
import logging

from api.controller import chatroomController, usersController
from langchain_community.chat_models import ChatOllama
from langchain_community.document_loaders import UnstructuredFileLoader
from langchain_community.embeddings import OllamaEmbeddings
from langchain_community.vectorstores import FAISS
from langchain_core.callbacks import BaseCallbackHandler
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.runnables import RunnableLambda, RunnablePassthrough
from langchain_text_splitters import CharacterTextSplitter

app = FastAPI()
app.include_router(usersController.router)
app.include_router(chatroomController.router)


# 로깅 설정
logging.basicConfig(level=logging.DEBUG)
logger = logging.getLogger(__name__)

# 로깅 설정
# logger = logging.getLogger(__name__)
# logging.basicConfig(level=logging.DEBUG)
# # 3. formatting 설정
# formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
# # 4. handler 설정
# # console 출력
# stream_hander = logging.StreamHandler()
# stream_hander.setFormatter(formatter)
# logger.addHandler(stream_hander)
# # 파일 출력
# file_handler = logging.FileHandler('debug.log', mode='w')
# logger.addHandler(file_handler)

# 글로벌 변수로 파일 임베딩 결과를 저장
# global retriever
retriever = None

# 간단한 메모리 내 저장소
session_messages = []

# 서버 시작 시 파일 임베딩(내규)
@app.on_event("startup")
async def load_embeddings():
    global retriever

    # retriever가 이미 존재하면 함수 종료
    if retriever is not None:
        logger.info("~~~~~~~Hello~~~~~~~")
        logger.info("Retriever already exists. Exiting the function.")
        return
    
    file_path = os.path.join(os.path.dirname(__file__), 'files/콩쥐팥쥐.docx')
    if not os.path.exists(file_path):
        logger.error("@@@@@@@@File not found, please check the file path.")
        return
    retriever = embed_file(file_path)
    logger.info("@@@@@@@@File has been embedded and is ready to use.")


def embed_file(file_path):
    file_name = os.path.basename(file_path)  # 파일 이름 추출
    file_cache_path = os.path.join(os.path.dirname(__file__), f".cache/private_files/{file_name}")


    with open(file_path, "rb") as file:
        file_content = file.read()

    with open(file_cache_path, "wb") as f:
        f.write(file_content)

    cache_dir = LocalFileStore(os.path.join(os.path.dirname(__file__), f".cache/private_embeddings/{file_name}"))
    splitter = CharacterTextSplitter.from_tiktoken_encoder(
        separator="\n",
        chunk_size=600,
        chunk_overlap=100,
    )
    loader = UnstructuredFileLoader(file_cache_path)
    docs = loader.load_and_split(text_splitter=splitter)
    embeddings = OllamaEmbeddings(model="mistral:latest")
    cached_embeddings = CacheBackedEmbeddings.from_bytes_store(embeddings, cache_dir)
    vectorstore = FAISS.from_documents(docs, cached_embeddings)
    retriever = vectorstore.as_retriever()
    return retriever

# 내규 질문
@app.get("/api/private/ask")
async def ask_internal_regulations(query: str):
    logger.debug("query : "+query)
    if not query:
        return {"message": "Please provide a query."}
    else:
        save_message(query, "human")

    global retriever

    class ChatCallbackHandler(BaseCallbackHandler):
        message = ""

        def on_llm_start(self, *args, **kwargs):
            self.message_box = ""

        def on_llm_end(self, *args, **kwargs):
            save_message(self.message, "ai")

        def on_llm_new_token(self, token, *args, **kwargs):
            self.message += token
            # self.message_box.markdown(self.message)


    llm = ChatOllama(
        model="mistral:latest",
        temperature=0.1,
        streaming=True,
        callbacks=[
            ChatCallbackHandler(),
        ],
    )

    prompt = ChatPromptTemplate.from_template(
        """Answer the question in Korean, using ONLY the following context and not your training data. If you don't know the answer just say you don't know. DON'T make anything up.
        
        Context: {context}
        Question:{question}
        """
    )

    chain = (
        {
            "context": retriever | RunnableLambda(format_docs),
            "question": RunnablePassthrough(),
        }
        | prompt
        | llm
    )

    return chain.invoke(query)

def save_message(message, role):
    session_messages.append({"message": message, "role": role})


def format_docs(docs):
    return "\n\n".join(document.page_content for document in docs)

# @app.get("/api/python")
# def hello_world():
#     return {"message": "Hello World"}

# @app.get("/api/private/ask")
# def ask_internal_regulations(query: str):
#     if not query:
#         return {"message": "Please provide a query."}
#     else:
#         return {"message": "Gooooood"}