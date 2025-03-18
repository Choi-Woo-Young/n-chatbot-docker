import logging
import os
from api.config.formatters import SQLAlchemySQLFormatter
from api.config.settings import EnvSettings
from api.modules.chatMemoryModel import ChatMemoryModel
from api.utils.handler import CustomChatCallbackHandler
from langchain_openai import ChatOpenAI
from queue import Queue
from langchain.globals import set_llm_cache
#from langchain.cache import InMemoryCache
from langchain_community.cache import InMemoryCache

# Logger
log_file_path = "fast-api.log"
logging.basicConfig(
    level=logging.DEBUG,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler(log_file_path),
        logging.StreamHandler()
    ]
)
logger = logging.getLogger("uvicorn")
logger.setLevel(logging.DEBUG)
#logger.setLevel(logging.INFO)

# SQLAlchemy Logger
# sql_logger = logging.getLogger('sqlalchemy.engine')
# sql_logger.setLevel(logging.DEBUG)

# handler = logging.StreamHandler()
# handler.setFormatter(SQLAlchemySQLFormatter())

# sql_logger.addHandler(handler)

# VectorDB Retriever
retriever = None

env_settings = EnvSettings(_env_file=(os.path.join(os.path.dirname(os.path.abspath(
    __file__)), "../.env."+os.getenv("FAST_API_MODE", "production"))), _env_file_encoding='utf-8')

#챗 메모리
chat_memory_model = ChatMemoryModel()

#in-memory cache 사용
set_llm_cache(InMemoryCache())

#streamer_queue = Queue()
#chat_callback_handler = CustomChatCallbackHandler(streamer_queue)
# chat_llm = ChatOpenAI(
#     api_key=env_settings.openai_api_key,
#     base_url=env_settings.openai_base_url,
#     model=env_settings.openai_chat_model,  # "gpt-3.5-turbo",
#     temperature=0.1,
#     streaming=True,
#     max_retries=1,
#     timeout=60,
#     callbacks=[
#         chat_callback_handler,
#     ],
# )


# no_streaming_llm = ChatOpenAI(
#     api_key=env_settings.openai_api_key,
#     base_url=env_settings.openai_base_url,
#     model=env_settings.openai_chat_model,  # "gpt-3.5-turbo",
#     temperature=0.1,
#     streaming=False,
#     max_retries=1,
#     timeout=60,
# )

self_service_info = {"NICE_NGROUPWARE_SVC":"내부 그룹웨어", "NICE_HGROUPWARE_SVC":"외부 그룹웨어", "NICE_WEBMAIL_SVC": "내부메일"}


service_list = []
service_desc_list = []