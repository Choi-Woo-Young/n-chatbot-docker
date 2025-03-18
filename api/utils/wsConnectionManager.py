import json
import logging
from fastapi import (
    Cookie,
    Depends,
    FastAPI,
    Query,
    WebSocket,
    WebSocketException,
    status,
)

from api.config import models
from api.config.globals import logger


class WsConnectionManager:
    def __init__(self):

        self.active_connections = {}

    # 채팅방 접속
    async def connect(self, chat_id: int, websocket: WebSocket):
        logger.info(f"connect - chat_id: {chat_id}, websocket: {websocket}")
        await websocket.accept()

    # 채팅방 참여자 추가
    async def add_participant(self, chat_id: int, websocket: WebSocket):
        try:
            logger.info(
                f"add_participant - chat_id: {chat_id}, websocket: {websocket}")
            if chat_id in self.active_connections.keys():
                if websocket not in self.active_connections[chat_id]:
                    self.active_connections[chat_id].append(websocket)
            else:
                self.active_connections[chat_id] = [websocket]
            logger.info(
                f"add_participant - active_connections: {self.active_connections}")
        except Exception as e:
            logger.error(f"add_participant - Exception: {e}")
            raise WebSocketException(status_code=500, detail=str(e))

    # 채팅방 나가기
    def disconnect(self, chat_id: int, websocket: WebSocket):
        try:
            logger.info(f"disconnect - chat_id: {chat_id}, websocket: {websocket}")
            for ws in self.active_connections[chat_id]:
                if ws == websocket:
                    self.active_connections[chat_id].remove(ws)
                    # if not self.active_connections[chat_id]:
                    #    del self.active_connections[chat_id]
        except Exception as e:
            logger.error(f"disconnect - Exception: {e}")
            raise WebSocketException(status_code=500, detail=str(e))

    # 채팅방 참여자들에게 메시지 전송
    async def send_message_to_chatroom(self, chat_id: int, chat_msg_model: models.ChatMessageModel):
        try:
            logger.info(
                f"###send_message_to_chatroom - socket len: {len(self.active_connections[chat_id])} chat_id: {chat_id}, message: {chat_msg_model.model_dump_json()}")
            for ws in list(self.active_connections[chat_id]):
                try:
                    logger.info(
                        f"###send_message_to_chatroom - message: {chat_msg_model.model_dump_json()}- ws: {ws}")
                    await ws.send_text(chat_msg_model.model_dump_json())
                    # logger.info("send_message_to_chatroom - message sent")
                except RuntimeError as e:
                    logger.error(
                        f"send_message_to_chatroom - RuntimeError: {e}")
                    self.disconnect(chat_id, ws)
        except Exception as e:
            self.disconnect(chat_id, ws)
            logger.error(f"send_message_to_chatroom - Exception: {e}")
            raise WebSocketException(status_code=500, detail=str(e))

    # 모튼 참여자들에게 메시지 전송
    async def broadcast(self, message: str):
        try:    
            logger.info(f"broadcast - message: {message}")
            for chat_id in self.active_connections.keys():
                for ws in self.active_connections[chat_id]:
                    await ws.send_json(message)
        except Exception as e:
            logger.error(f"broadcast - Exception: {e}")
            raise WebSocketException(status_code=500, detail=str(e))

    def get_active_connections(self, chat_id: int):
        return self.active_connections[chat_id]
    
    # 채팅방 참여자들에게 시스템 메시지 전송
    async def send_system_message_to_chatroom(self, chat_id: int, system_msg: dict):
        try:
            logger.info(
                f"###send_system_message_to_chatroom - socket len: {len(self.active_connections[chat_id])} chat_id: {chat_id}, message: {json.dumps(system_msg)}")
            for ws in list(self.active_connections[chat_id]):
                try:
                    logger.info(
                        f"###send_message_to_chatroom - message: {json.dumps(system_msg)}- ws: {ws}")
                    await ws.send_text(json.dumps(system_msg))
                    # logger.info("send_message_to_chatroom - message sent")
                except RuntimeError as e:
                    logger.error(
                        f"send_message_to_chatroom - RuntimeError: {e}")
                    self.disconnect(chat_id, ws)
        except Exception as e:
            self.disconnect(chat_id, ws)
            logger.error(f"send_message_to_chatroom - Exception: {e}")
            raise WebSocketException(status_code=500, detail=str(e))
