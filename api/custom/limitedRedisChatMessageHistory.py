from fastapi import HTTPException
from langchain_community.chat_message_histories import RedisChatMessageHistory
from api.config.globals import logger
import json
import logging
from typing import List, Optional
from langchain_core.chat_history import BaseChatMessageHistory
from langchain_core.messages import (
    BaseMessage,
    message_to_dict,
    messages_from_dict,
)

from langchain_community.utilities.redis import get_client

class LimitedRedisChatMessageHistory(RedisChatMessageHistory):
    def __init__(self, session_id, url, max_messages=30000):
        super().__init__(session_id, url)
        self.max_messages = max_messages

    @property
    def messages(self) -> List[BaseMessage]:
        try:
            """Retrieve the messages from Redis"""
            _items = self.redis_client.lrange(self.key, -10, -1)  # 마지막 10개만 가져옴
            items = [json.loads(m.decode("utf-8")) for m in _items[::-1]]  # 최신 메시지가 마지막이므로 역순으로 변환
            messages = messages_from_dict(items)
            # 마지막 10개 messages만 가져오기
            return messages[-10:]
        except Exception as e:
            logger.error(f"messages: {e}")
            raise HTTPException(status_code=500, detail=str(e))