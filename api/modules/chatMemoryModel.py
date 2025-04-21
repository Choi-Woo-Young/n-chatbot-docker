from openai import OpenAI
import api.config.globals  as g
from langchain.memory import ConversationBufferMemory, ConversationBufferWindowMemory
from queue import Queue
from api.utils.handler import CustomChatCallbackHandler
from langchain_openai import ChatOpenAI
from fastapi import HTTPException



class ChatMemoryModel:
    chat_memory_dict = None

    def __init__(self):
       self.chat_memory_dict = {}
    
    def get_chat_memory(self, chat_id):
        try:
            if chat_id not in self.chat_memory_dict:
                # OpenAI API 설정
                chat_llm = ChatOpenAI(
                    # OpenAI API 키 설정
                    api_key=g.env_settings.openai_api_key,
                    # OpenAI API 엔드포인트 URL
                    base_url=g.env_settings.openai_base_url,
                    # 사용할 모델 지정 (기본값: gpt-3.5-turbo)
                    model=g.env_settings.openai_chat_model,
                    # 응답의 무작위성 조절 (0: 결정적, 1: 매우 무작위)
                    temperature=0.1,
                    # 스트리밍 활성화 (실시간으로 응답을 받음)
                    streaming=True,
                    # API 호출 실패 시 재시도 횟수
                    max_retries=1,
                    # API 호출 타임아웃 시간 (초)
                    timeout=60,
                    # 사용자 정의 콜백 핸들러 설정
                    callbacks=[
                        CustomChatCallbackHandler(Queue()),
                    ],
                )
                               
                memory = ConversationBufferWindowMemory(
                    llm=chat_llm,
                    max_token_limit=100,  # 요약의 기준이 되는 토큰 길이를 설정합니다.
                    return_messages=True,
                    memory_key=chat_id,
                    k=5,
                )
                #memory.load_memory_variables({})
                self.chat_memory_dict[chat_id] = memory
            
            return self.chat_memory_dict[chat_id]
        except Exception as e:
            g.logger.error(f"get_chat_memory: {e}")
            raise HTTPException(status_code=500, detail=str(e))
        
    
    # 대화 내용을 메모리에 저장
    # TODO 코드 투어 - [LLM챗] 200. 대화 내용 메모리에 저장
    # [keyword] ConversationBufferWindowMemory
    def save_context(self, chat_id, input, output):
        try:
            memory = self.get_chat_memory(chat_id)
            memory.save_context(input, output)
        except Exception as e:
            g.logger.error(f"save_context: {e}")
            raise HTTPException(status_code=500, detail=str(e))
        
    # 대롸 내용 메모리에서 불러오기
    def get_chat_history(self, chat_id):
        try:
            memory = self.get_chat_memory(chat_id)
            memory_variables = memory.load_memory_variables({"chat_id": chat_id})
            chat_history = memory_variables[str(chat_id)]
            return chat_history
        except Exception as e:
            g.logger.error(f"get_chat_history: {e}")
            raise HTTPException(status_code=500, detail=str(e))
    
    def clear_chat_memory(self, chat_id):
        try:
            # memory = self.get_chat_memory(chat_id)
            # if memory is not None:
            #     memory.clear()
            if chat_id in self.chat_memory_dict:
                del self.chat_memory_dict[chat_id]
        except Exception as e:
            g.logger.error(f"clear_chat_memory: {e}")
            raise HTTPException(status_code=500, detail=str(e))