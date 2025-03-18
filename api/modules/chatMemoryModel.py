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
                chat_llm = ChatOpenAI(
                    api_key=g.env_settings.openai_api_key,
                    base_url=g.env_settings.openai_base_url,
                    model=g.env_settings.openai_chat_model,  # "gpt-3.5-turbo",
                    temperature=0.1,
                    streaming=True,
                    max_retries=1,
                    timeout=60,
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