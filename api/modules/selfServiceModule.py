from typing import Dict
from api.config.globals import logger
import api.config.globals  as g
import requests
from api.repositories import user_repository
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

#self-service 호출을 위한 사용자 상세 정보 조회
def get_user_detail(user_id: str, db: Session):
    try:
        usr_model = user_repository.get_user_by_user_id(db=db, user_id=user_id)
        if usr_model == None:
            raise HTTPException(status_code=404, detail="해당 사용자가 존재하지 않습니다")
        
        
        url = g.env_settings.apim_url+"/1/gw/ip-info"
        headers = {
            "accept": "*/*",
            "ApiKey": g.env_settings.apim_api_key,
            "Content-Type": "application/json"
        }
        #usr_model.ip 맨앞 2자리 제거 (ex.회사코드 01)
        emp_no = usr_model.emp_no
        if emp_no.__len__() > 7 :
            emp_no = usr_model.emp_no[2:]
        params = {
            "ip": usr_model.ip,
            "empNo": emp_no
        }
        response = requests.get(url, headers=headers ,params=params)
        print("Response content:", response.text)
        rsp_json  = response.json()
        if response.status_code == 200 and rsp_json.get("status") == "SUCCESS":
            #{"status":"ERROR","message":"해당 사용자가 존재하지 않습니다","data":null}
            usr_json  = response.json().get("data")[0]
            usr_model.user_nm=str(usr_json.get("username"))
            usr_model.emp_no=str(usr_json.get("sabun"))
            usr_model.email=str(usr_json.get("useremail"))
            usr_model.ip=str(usr_json.get("cefIpaddress"))
            usr_model.hp_num=str(usr_json.get("cellphoneno"))
            return usr_model
        else:
            logger.info("공용서비스 API 호출에 실패하였습니다.:" + response.text)
            raise HTTPException(status_code=404, detail="공용서비스 API 호출에 실패하였습니다.")
    except Exception as e:
        logger.error(f"get_user_detail: {e}")
        raise HTTPException(status_code=500, detail="사용자 정보 조회에 실패하였습니다.")

# TODO 코드 투어 - [봇과채팅](백엔드) 150. 셀프서비스 판단
def check_self_service(chat_message: models.ChatMessageModel):
    try:
        query = chat_message.chat_message
        
        # OpenAI API 설정
        no_streaming_llm = ChatOpenAI(
            # OpenAI API 키 설정
            api_key=g.env_settings.openai_api_key,
            # OpenAI API 엔드포인트 URL
            base_url=g.env_settings.openai_base_url,
            # 사용할 모델 지정 (기본값: gpt-3.5-turbo)
            model=g.env_settings.openai_chat_model,
            # 응답의 무작위성 조절 (0: 결정적, 1: 매우 무작위)
            temperature=0.1,
            # 스트리밍 비활성화 (전체 응답을 한 번에 받음)
            streaming=False,
            # API 호출 실패 시 재시도 횟수
            max_retries=1,
            # API 호출 타임아웃 시간 (초)
            timeout=60,
        )
        
        self_service_yn_prompt_template = load_prompt("api/prompts/json/self_service_yn_prompt_template.json")
        self_service_yn_chain = (
                self_service_yn_prompt_template 
                | no_streaming_llm
                | StrOutputParser())
        
        
        self_service_cd_prompt_template = load_prompt("api/prompts/json/self_service_cd_prompt_template.json")
        self_service_cd_chain = (
                self_service_cd_prompt_template 
                | no_streaming_llm 
                | StrOutputParser())
        
        def self_service_info_formatter_chain_fn(self_service_info: Dict):
            
            self_service_yn = self_service_info["self_service_yn"]
            self_service_cd = self_service_info["self_service_cd"]
            
            self_service_yn = self_service_yn.strip().replace('"', '').replace("'", "").replace(" ", "").replace("\n", "").upper()
            if "Y" in self_service_yn   :
                self_service_yn = "Y"
            else:
                self_service_yn = "N"
            
            self_service_cd = self_service_cd.strip().replace('"', '').replace("'", "").replace(" ", "").replace("\n", "").upper()
            if "NICE_NGROUPWARE_SVC" in self_service_cd:
                self_service_cd = "NICE_NGROUPWARE_SVC"
            elif "NICE_HGROUPWARE_SVC" in self_service_cd:
                self_service_cd = "NICE_HGROUPWARE_SVC"
            elif "NICE_WEBMAIL_SVC" in self_service_cd:
                self_service_cd = "NICE_WEBMAIL_SVC"
            else:
                self_service_cd = "NA"
                
        
            return {
                "self_service_yn": self_service_yn,
                "self_service_cd": self_service_cd
            }

        self_service_chain = (
            RunnableParallel({"self_service_yn": self_service_yn_chain,  "self_service_cd": self_service_cd_chain})
            | RunnableLambda(self_service_info_formatter_chain_fn)
            )
        self_service_info = self_service_chain.invoke({"question":query})
        logger.info('self_service_info: '+dumps(self_service_info))
        return self_service_info
    except Exception as e:
        logger.error(f"check_self_service: {e}")
        return {"self_service_yn": "N", "self_service_cd": "NA" }


#비밀번호 초기화
def reset_password(service_id: str, user_id: str, db: Session):
    try: 
        usr_model = get_user_detail(user_id, db)
        #usr_model = user_repository.get_user_by_user_id(db=db, user_id=user_id)
        logger.info('usr_model: '+usr_model.model_dump_json())
        if usr_model == None:
            raise HTTPException("Failed to user detail data")
        
        url = g.env_settings.apim_url+"/1/cmn/change-password"
        headers = {
               "accept": "*/*",
            "ApiKey": g.env_settings.apim_api_key
            }
         
        emp_no = usr_model.emp_no
        logger.info('emp_no: '+emp_no)  
        if len(emp_no) > 7 :
            emp_no = emp_no[2:]
            
        data = {
            "ip": usr_model.ip,
            "serviceId": service_id, #NICE_NGROUPWARE_SVC, NICE_HGROUPWARE_SVC, NICE_WEBMAIL_SVC
            "empNo": emp_no,
            "name": usr_model.user_nm,
            "mobileNumber": usr_model.hp_num
        }
        logger.info('reset_password data: '+dumps(data))
        response = requests.post(url, headers=headers , json=data)
        print("Response content:", response.text)
        rsp_json  = response.json()
        if response.status_code == 200 and rsp_json.get("status") == "SUCCESS":
            return PlainTextResponse(usr_model.user_nm+'님,' + response.json().get("message"))
        else:
            print("Failed to retrieve data:" + response.text )
            return PlainTextResponse("비밀번호 초기화에 실패하였습니다.")
    except Exception as e:
        logger.error(f"reset_password Exception: {e}")
        return PlainTextResponse("비밀번호 초기화에 실패하였습니다.")