from typing import Annotated, Optional, Union
from fastapi import (
    Cookie,
    Depends,
    FastAPI,
    Query,
    WebSocket,
    WebSocketException,
    WebSocketDisconnect,
    status,
)
from fastapi.responses import HTMLResponse
from typing import Dict
from fastapi import APIRouter, Depends, FastAPI, HTTPException
from sqlalchemy.orm import Session
from ..repositories import chatroom_repository, chatroom_user_repository
from ..modules import nTalkModule
from api.utils.wsConnectionManager import WsConnectionManager
from ..config import schemas, models
from ..config.database import SessionLocal, engine
import logging
from ..config import models, schemas
import json
import asyncio
from api.config.globals import logger
from api.config.database import get_db
from pydantic import BaseModel

class ChattingReqModel(BaseModel):
    user_id: int
    chat_id: int


schemas.Base.metadata.create_all(bind=engine)

router = APIRouter(
    prefix="/chatting",
    tags=["chatting"]
)

html = """
<!DOCTYPE html>
<html>
    <head>
        <title>Chat</title>
    </head>
    <body>
        <h1>WebSocket Chat</h1>
        <form action="" onsubmit="sendMessage(event)">
            <label>Chat ID: <input type="text" id="chatId" autocomplete="off" value="1"/></label>
            <label>User ID: <input type="text" id="userId" autocomplete="off" value="1"/></label>
            <button onclick="connect(event)">Connect</button>
            <hr>
            <label>Message: <input type="text" id="messageText" autocomplete="off"/></label>
            <button>Send</button>
        </form>
        <ul id='messages'>
        </ul>
        <script>
        var client_id =Date.now()
        var ws = null;
            function connect(event) {
                var chatId = document.getElementById("chatId")
                var userId = document.getElementById("userId")
                ws = new WebSocket("ws://localhost:8019/chatting/" + chatId.value + "/users/"+userId.value);
                
                ws.onmessage = function(event) {
                    //alert(event.data)
                    console.log(event.data)
                    var messages = document.getElementById('messages')
                    var message = document.createElement('li')
                    var content = document.createTextNode(event.data)
                    message.appendChild(content)
                    messages.appendChild(message)
                };
                event.preventDefault()
            }
            function sendMessage(event) {
                var input = document.getElementById("messageText")
                ws.send('{"chat_id":"'+chatId.value+'","user_id":"'+userId.value+'", "user_role_cd":"USR","chat_message":"'+input.value+'"}')
                input.value = ''
                event.preventDefault()
            }
        </script>
    </body>
</html>
"""


wsConnectionManager = WsConnectionManager()


@router.get("/html")
async def get():
    return HTMLResponse(html)


@router.websocket("/{chat_id}/users/{user_id}")
async def websocket_endpoint(
    *,
    websocket: WebSocket,
    chat_id: int,
    user_id: int,
    q: Union[int, None] = None,
    db: Session = Depends(get_db),
    #redis: Annotated[aioredis.Redis, Depends(get_redis_pool)]
):
    logger.info(f"chat_id: {chat_id}, user_id: {user_id}, q: {q}")
    try:
        # 채팅방 유효 체크
        chatroom_model = chatroom_repository.get_chatroom(db=db, chat_id=chat_id)
        
        if chatroom_model is None:
            raise HTTPException(
                status_code=status.HTTP_403_FORBIDDEN, detail="유효한 채팅방이 없습니다.")
        else:
            #채팅방 상태를 "CRSTT040"(지원중)으로 업데이트
            chatroom_repository.update_chatroom_state(db, chat_id, "CRSTT040")
        logger.info(f"1.채팅방 유효 체크 완료 - chatroom_model: {chatroom_model}")

        #pubsub = redis.pubsub()
        #await pubsub.subscribe(chat_id)
        # 웹소켓 연결 승인 및 redis 채팅방ID 구독
        await websocket.accept()
        # await wsConnectionManager.connect(websocket)
        # 채팅방 참여자 추가(이미 참여중이면 추가하지 않음)
        await wsConnectionManager.add_participant(chat_id, websocket)
        #Todo DB에도 채팅방 참여자 추가 필요
        logger.info(
            f"2.채팅방 참여자 추가 완료 - chat_id: {chat_id}, user_id: {user_id}")

        active_connections = wsConnectionManager.get_active_connections(chat_id)
        logger.info(f"***active_connections: {active_connections}")

        # # 채팅 참여자 체크
        # chatroom_user_model_list = get_chatroom_users(db=db, chat_id=chat_id)
        # chatroom_user_id_list = [
        #     chatroom_user_model.user_id for chatroom_user_model in chatroom_user_model_list]
        # if user_id not in chatroom_user_id_list:
        #     logger.info(f"채팅 참여자 체크- {user_id}는 {chat_id}채팅방 참여자가 아닙니다.")
        #     # 채팅방 참여자 추가(이미 참여중이면 추가하지 않음)
        #     await wsConnectionManager.add_participant(chat_id, websocket)
        #     #raise HTTPException(status_code=status.HTTP_403_FORBIDDEN, detail="{user_id}는 {chat_id}채팅방 참여자가 아닙니다.")
        # logger.info(f"2.채팅방 참여자 체크 완료 - chatroom_user_id_list: {chatroom_user_id_list}")

        # client 사용자로부터 메시지 수신 처리
        try:
            while True:
                try:
                    # 사용자로부터 메시지 수신
                    rev_client_chat_text = await websocket.receive_json()  # : models.ChatMessageModel
                    logger.info(
                        f"###3.사용자로부터 메시지 수신 완료 - rev_client_chat_msg: {rev_client_chat_text}")
                    if rev_client_chat_text:
                        if rev_client_chat_text["msg_type"] == "SYSTEM":
                            await wsConnectionManager.send_system_message_to_chatroom(rev_client_chat_text["chat_id"], rev_client_chat_text)
                            continue

                        rev_client_chat_msg = models.ChatMessageModel.json_to_model(
                            rev_client_chat_text)
                        logger.info(
                            f"4.메시지를 모델로 변환 - rev_client_chat_msg: {rev_client_chat_msg}")
                        # DB에 채팅메시지 저장
                        chat_msg = chatroom_repository.register_chat_message(db, rev_client_chat_msg)
                        
                        # 채팅메시지에 사용자 정보 추가
                        chat_msg.user_nm = rev_client_chat_msg.user_nm
                        chat_msg.dept_nm = rev_client_chat_msg.dept_nm

                        await wsConnectionManager.send_message_to_chatroom(chat_msg.chat_id, chat_msg)
                        
                        # logger.info("###5.DB에 채팅메시지 저장: " +
                        #             chat_msg.model_dump_json())
                        # # redis에 채팅메시지 저장
                        # await redis.set(chat_msg.chat_id, chat_msg.chat_message, ex=int(3600))
                        # logger.info("6.redis에 채팅메시지 저장")
                        # # redis로 채팅메시지 발행(publish)
                        # logger.info("###7.redis로 채팅메시지 발행(publish) - chat_id:" +
                        #             str(chat_id)+" chat_msg: "+chat_msg.model_dump_json())
                        # await redis.publish(chat_id, chat_msg.model_dump_json())
                        # await asyncio.sleep(0.1)

                        # # redis 메시지 수신 처리
                        # while True:
                        #     # redis 메시지 수신
                        #     rev_redis_msg = await pubsub.get_message(ignore_subscribe_messages=True, timeout=5)
                        #     logger.info(
                        #         f"###8.redis 메시지 수신 완료 - chat_msg: {rev_redis_msg}")
                        #     if rev_redis_msg:
                        #         logger.info("9.redis로부터 메시지 정상 수신 ")
                        #         logger.info(
                        #             f"10.메시지를 모델로 변환 - rev_redis_msg: {rev_redis_msg['data']}")
                        #         rev_client_chat_msg = models.ChatMessageModel.json_to_model(
                        #             json.loads(rev_redis_msg['data']))
                        #         # 채팅방 참여자들에게 메시지 전송
                        #         await wsConnectionManager.send_message_to_chatroom(rev_client_chat_msg.chat_id, rev_client_chat_msg)
                        #         break
                        #     # else:
                        #     #     if rev_redis_msg is None:
                        #     #         try:
                        #     #             rev_redis_msg = await redis.get(chat_id)
                        #     #             await wsConnectionManager.send_message_to_chatroom(rev_client_chat_msg.chat_id, rev_client_chat_msg)
                        #     #         except Exception as e:
                        #     #             pass
                        #     #     break
                        #     await asyncio.sleep(0.1)
                except Exception as e:
                    logger.error(f"사용자 메시지 수신 루프 내 처리 오류: {e}")
                    wsConnectionManager.disconnect(chat_id, websocket)
                    raise HTTPException(
                        status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail=str(e))
        except WebSocketDisconnect as e:
            logger.error(f"메시지 수신 처리 오류: {e}")
            wsConnectionManager.disconnect(chat_id, websocket)
            await wsConnectionManager.broadcast(f"{chat_id} >Client #{user_id} left the chat")
            raise HTTPException(
                status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail=str(e))

    except Exception as e:
        logger.error(f"websocket_endpoint - {e}")
        wsConnectionManager.disconnect(chat_id, websocket)
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR, detail=str(e))

# 지원
@router.post("/support", response_model=Optional[models.ChatRoomModel])
def chatting_support(req: ChattingReqModel, db: Session = Depends(get_db)):
    try:
        logger.info('/chatting/support - user_id:' + str(req.user_id) + "\nchat_id:" + str(req.chat_id))
        
        if (req.user_id == None or req.chat_id == None):
            return None
        
        # 채팅방 유효 체크
        chatroom_model = chatroom_repository.get_chatroom(db=db, chat_id=req.chat_id)
        
        if chatroom_model is None:
            raise HTTPException(
                status_code=status.HTTP_403_FORBIDDEN, detail="유효한 채팅방이 없습니다.")
        
        if chatroom_model.mgr_user_id != None and chatroom_model.mgr_user_id != req.user_id:
            raise HTTPException(
                status_code=status.HTTP_409_CONFLICT, detail="다른 담당자가 이미 지원중인 채팅방입니다.")
        
        # 채팅방 현재 담당자 업데이트
        chatroom_model = chatroom_repository.update_chatroom_manager(db, req.chat_id, req.user_id)

        # 채팅방 참여자 추가
        chatroom_user_repository.add_chatroom_user(db, req.chat_id, req.user_id, "MGR")
        
        #ntalk 메신저 알림 발송
        nTalkModule.thread_send_msg_to_messenger(db,  "SUPPORT", req.chat_id)

        return chatroom_model
    except HTTPException as e:
        # HTTPException은 그대로 다시 raise
        raise e
    except Exception as e:
        # 나머지 모든 예외는 400으로 처리
        logger.error('/support: ' + str(e))
        raise HTTPException(status_code=400, detail="오류 발생")

