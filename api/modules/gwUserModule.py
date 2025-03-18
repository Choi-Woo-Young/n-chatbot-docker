from typing import Dict
from api.config.globals import logger
import api.config.globals  as g
import requests
from ..config import schemas, models
from json import dumps
from api.modules.retrieverModule import get_retriever
from api.repositories.chatroom_repository import register_chat_message
from fastapi.responses import StreamingResponse
from fake_useragent import UserAgent
from fastapi import FastAPI, HTTPException
from langchain_core.output_parsers import StrOutputParser
from langchain.prompts import load_prompt
from langchain_core.runnables.base import RunnableParallel, RunnableLambda 
from sqlalchemy.orm import Session
from langchain_openai import ChatOpenAI
from fastapi.responses import StreamingResponse, PlainTextResponse

#그룹웨어 전체 사용자 정보 조회
def get_all_gw_user_list()-> list[models.UserModel]:
    try:
        all_gw_user_list = []
        url = g.env_settings.apim_url+"/1/gw/all-users"
        headers = {
            "accept": "*/*",
            "ApiKey": g.env_settings.apim_api_key,
            "Content-Type": "application/json"
        }
        response = requests.get(url, headers=headers)
        # print("Response content:", response.text)
        rsp_json  = response.json()
        if response.status_code == 200 and rsp_json.get("status") == "SUCCESS":
            
            for user_json in response.json().get("data"):
                usr_model = models.UserModel()
                usr_model.user_nm=str(user_json.get("username"))
                usr_model.emp_no=str(user_json.get("sabun"))
                usr_model.email=str(user_json.get("useremail"))
                usr_model.ip=str(user_json.get("cefIpaddress"))
                usr_model.dept_nm=str(user_json.get("deptname"))
                usr_model.position_nm=str(user_json.get("positionname"))
                usr_model.hp_num=str(user_json.get("cellphoneno"))
                all_gw_user_list.append(usr_model)
            return all_gw_user_list
        
        else:
            logger.info("공용서비스 API 호출에 실패하였습니다.:" + response.text)
            raise HTTPException(status_code=404, detail="공용서비스 API 호출에 실패하였습니다.")
        
    except Exception as e:
        logger.error(f"get_all_user_list: {e}")
        raise HTTPException(status_code=500, detail="사용자 정보 조회에 실패하였습니다.")

    