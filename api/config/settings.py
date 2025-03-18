
import os
from pydantic_settings import BaseSettings, SettingsConfigDict


class EnvSettings(BaseSettings):
    environment: str
    db_url: str
    db_name: str
    db_user: str
    db_password: str
    current_schema: str
    
    redis_url:str 
    
    embedding_model: str
    openai_api_key: str
    openai_base_url: str
    openai_chat_model: str
    
    apim_url: str
    apim_api_key: str
    
    ntalk_messenger_endpoint:str
    
    domain: str
    

    model_config = SettingsConfigDict(
        env_file=(os.path.join(os.path.dirname(os.path.abspath(__file__)),
                  "../.env."+os.getenv("FAST_API_MODE", "production"))),
        env_file_encoding='utf-8'
    )
