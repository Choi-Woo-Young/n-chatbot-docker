from api.config import database
from api.config.globals import logger
from fastapi import FastAPI, Request, HTTPException
from fastapi.responses import JSONResponse
import api.config.globals as g
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

# FastAPI 애플리케이션 생성
app = FastAPI()

# CORS 미들웨어 추가
app.add_middleware(
    CORSMiddleware,
    # 용된 출처 목록
    allow_origins=[
        "http://localhost",
        "http://localhost:8019",  # FastAPI 기본 실행 포트
        "http://10.97.192.101:8019",
    ],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

#TODO 코드 투어 - [임베딩] 100. 서버 시작 시 실행되는 이벤트 핸들러
# 서버 시작 시 실행되는 이벤트 핸들러
@app.on_event("startup")
def startup_event():
    logger.info("===============startup=================")
    
    # 임베딩 모델 초기화 >>
    get_retriever()

    # 환경 설정 로드 확인
    environment = g.env_settings.environment
    openai_chat_model = g.env_settings.openai_chat_model
    openai_api_key = g.env_settings.openai_api_key
    logger.info(f"environment: {environment}")
    logger.info(f"openai_chat_model: {openai_chat_model}")
    logger.info(f"openai_api_key: {openai_api_key}")

    # 스케줄러 시작
    scheduleModule.scheduler.start()
    logger.info("scheduler started")

    # 임베딩 파일 목록 로드
    embedding_file_repository.get_embedding_file_list(next(database.get_db()))


# 전역 예외 처리 핸들러
@app.exception_handler(Exception)
async def global_exception_handler(request: Request, exc: Exception):
    return JSONResponse(
        status_code=500,
        content={"message": "Internal server error", "detail": str(exc)}
    )

# IP 제한 및 API 호출 이력 저장을 위한 미들웨어
@app.middleware("http")
async def restrict_ip_middleware(request: Request, call_next):
    try:
        # 클라이언트 IP 주소 확인
        client_host = request.client.host
        logger.info(f"Client host: {client_host}")
        # IP 체크 로직 (현재는 주석 처리됨)
        # API 호출 이력 저장
        return await call_next(request)
    except Exception as e:
        logger.error(f"restrict_ip_middleware: {e}")
        raise HTTPException(status_code=500, detail=str(e))


# 라우터 등록
app.include_router(usersController.router)  # 사용자 관련 API
app.include_router(chatroomController.router)  # 채팅방 관련 API
app.include_router(chatbotController.router)  # 챗봇 관련 API
app.include_router(chattingController.router)  # 채팅 관련 API
app.include_router(transferController.router)  # 전송 관련 API
app.include_router(testController.router)  # 테스트 관련 API
app.include_router(dashboardController.router)  # 대시보드 관련 API
app.include_router(faqController.router)  # FAQ 관련 API
app.include_router(swaggerController.router)  # Swagger 문서 관련 API
app.include_router(embeddingFileController.router)  # 임베딩 파일 관련 API
app.include_router(feedbackController.router)  # 피드백 관련 API
app.include_router(noticeController.router)  # 공지사항 관련 API
