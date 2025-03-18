from api.config import database
from api.config.globals import logger
from fastapi import FastAPI, Request, HTTPException
from fastapi.responses import JSONResponse
import api.config.globals  as g
from api.modules import scheduleModule
from api.modules.retrieverModule import get_retriever
from api.modules.commonModule import api_tracking
from api.repositories import embedding_file_repository
from .controller import usersController
from .controller import chatroomController
from api.controller import chatbotController, chattingController, feedbackController, swaggerController, transferController, testController, dashboardController, faqController, embeddingFileController, noticeController
from starlette.requests import Request
from starlette.responses import Response
import json
from fastapi.middleware.cors import CORSMiddleware
from fastapi.staticfiles import StaticFiles
from pathlib import Path

app = FastAPI()

PATH_APP_PY = Path(__file__)
# PATH_APP_PY to str
STATIC_PATH = str(PATH_APP_PY) + "/static"

#CORS 설정 (Oauth2.0 등의 인증 체계를 가지지 않고, 특정 IP에서만 호출 가능하도록 설정)
origins = [
    "http://localhost",
    "http://localhost:8019",  # FastAPI 기본 실행 포트
    "http://10.97.192.101:8019", 
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


# 서버 시작 시 파일 임베딩(내규)
@app.on_event("startup")
def startup_event():
    logger.info("===============startup=================")
    get_retriever()
    environment = g.env_settings.environment
    openai_chat_model = g.env_settings.openai_chat_model
    logger.info(f"environment: {environment}")
    logger.info(f"openai_chat_model: {openai_chat_model}")
    scheduleModule.scheduler.start()
    logger.info(f"scheduler started")
    embedding_file_repository.get_embedding_file_list(next(database.get_db()))



# 전역 예외 처리
@app.exception_handler(Exception)
async def global_exception_handler(request: Request, exc: Exception):
    # logger.error(f"Unexpected error: {exc}")
    return JSONResponse(
        status_code=500,
        content={"message": "Internal server error", "detail": str(exc)}
    )

# 1. 호출 가능한 IP 제한 (Oauth2.0 등의 인증 체계를 가지지 않고, 특정 IP에서만 호출 가능하도록 설정)
# 2. API 호출 이력 저장
@app.middleware("http")
async def restrict_ip_middleware(request: Request, call_next):
    try:
        client_host = request.client.host
        logger.info(f"Client host: {client_host}")

        # IP 체크
        # if client_host != "127.0.0.1" and client_host != "10.98.21.163" and client_host != "10.98.23.163":
        #     raise HTTPException(
        #         status_code=403, detail="Access forbidden: Not allowed IP")

        # 헤더에서 user_id 추출
        # authorization: str = request.headers.get("Authorization")
        # if not authorization or not authorization.startswith("Bearer "):
        #     raise HTTPException(
        #         status_code=400, detail="Authorization header missing or invalid")

        # user_id = authorization[len("Bearer "):]
        # user_id = 999
        
        # # chat api는 호출이력저장 제외 (streaming 이슈)
        # url = str(request.url)
        # if url.endswith('/chatbot/ask'):
        #     response = await call_next(request)
        #     return response

        # # request 데이터
        # method = request.method
        # body = await request.body()
        # input_params = body.decode('utf-8') if method in ["POST", "PUT", "PATCH"] else dict(request.query_params)

        # if method not in ["POST", "PUT", "PATCH"]:
        #     input_params = json.dumps(input_params)

        # await set_body(request, body)

        # response = await call_next(request)

        # # response 데이터
        # response_body = b""
        # async for chunk in response.body_iterator:
        #     response_body += chunk
        # output_data = response_body.decode()

        # # API 호출 이력 저장
        # await api_tracking(url, method, response.status_code, input_params, output_data, user_id)
    
        # return Response(content=response_body, status_code=response.status_code, headers=dict(response.headers))
        return await call_next(request)
    except Exception as e: 
        logger.error(f"restrict_ip_middleware: {e}")
        raise HTTPException(status_code=500, detail=str(e))

async def set_body(request: Request, body: bytes):
    async def receive():
        return {"type": "http.request", "body": body}

    request._receive = receive


# endpoint를 별도 파일로 분리
app.include_router(usersController.router)
app.include_router(chatroomController.router)
app.include_router(chatbotController.router)
app.include_router(chattingController.router)
app.include_router(transferController.router)
app.include_router(testController.router)
app.include_router(dashboardController.router)
app.include_router(faqController.router)
app.include_router(swaggerController.router)
app.include_router(embeddingFileController.router)
app.include_router(feedbackController.router)
app.include_router(noticeController.router)