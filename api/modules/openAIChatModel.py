from fastapi import HTTPException
from openai import OpenAI
import api.config.globals  as g

class OpenAIChatModel:
    client = None

    def __init__(self, model, temperature, streaming, callbacks):
        self.model = model
        self.temperature = temperature
        self.streaming = streaming
        self.callbacks = callbacks
        self.client = OpenAI(api_key=g.env_settings.openai_api_key, base_url=g.env_settings.openai_base_url)
        
    def create_chat(self, prompt):
        try:
            response = self.client.chat.completrions.create(
                model = self.model,
                messages = [{"role":"user", "content":prompt}], 
                temperature = self.temperature,
                streaming = self.streaming,
            )
            for callback in self.callbacks:
                callback(response)
        except Exception as e:
            raise HTTPException(status_code=500, detail=str(e))