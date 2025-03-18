from json import dumps
from fastapi import HTTPException
import requests
from openai import OpenAI
import api.config.globals  as g
from api.config.globals import logger
from api.modules import chatSummaryModule
from api.repositories import chatroom_repository, user_repository
from ..config import models
from threading import Thread
from sqlalchemy.orm import Session
import os
import urllib.parse

# 메신저 호출
def call_messenger_api(ntalk_messenger_model: models.NtalkMessengerModel):
    try:
        logger.info("call_messenger_api: " + str(ntalk_messenger_model))
        environment = g.env_settings.environment
        if environment == "production":
            url = g.env_settings.ntalk_messenger_endpoint
            headers = {
                "Content-Type": "application/json"
            }
            json_data = ntalk_messenger_model.model_dump()
            response = requests.post(url, headers=headers, json=json_data)
            if response.status_code == 200:
                logger.info("Response content: " + response.text)
            else:
                logger.error("Failed to call messenger api" + response.text)
    except Exception as e:
        logger.error(f"call_messenger_api: {e}")
        raise HTTPException(status_code=500, detail=str(e))
    
    
# chatroom 정보 기반 메신저 호출
def send_msg_to_messenger(db: Session, type:str, chat_id:int ):
    try:
        logger.info(f"send_msg_to_messenger: {chat_id} / type : {type}")        
        chatroom_model = chatroom_repository.get_chatroom(db=db, chat_id=chat_id)
        if chatroom_model == None:
            logger.error("Failed to get chatroom model")
            raise HTTPException(status_code=404, detail="Failed to get chatroom model")
        
        #Direct link 생성
        param = {"chat_id": chat_id}
        enc_param = urllib.parse.quote(dumps(param))
        domain = g.env_settings.domain
        direct_url = f"{domain}/api/direct-link?key={enc_param}"
        print(direct_url)  # 예: http://localhost:3000/api/direct-link?key=%7B%22chat_id%22%3A63%7D

        #지원 시 요청자에게 알림
        if type == "SUPPORT":        
            user_model = user_repository.get_user_by_user_id(db=db, user_id=chatroom_model.user_id)
            if user_model == None:
                logger.error("Failed to get user model")
                raise HTTPException(status_code=404, detail="Failed to get user model")
            
            msg = f"""아래 문의 건의 담당자가 채팅방에 입장하셨습니다.
            
            ○ 제목: {chatroom_model.chat_title}
            ○ 내용: {chatroom_model.chat_content}
            ○ 태그: {chatroom_model.hashtag}
            ○ 링크: <a href=\"{direct_url}\">문의 대화방 바로가기</a>"""
    
            ntalk_messenger_model = models.NtalkMessengerModel(
                title="업무지원챗봇 담당자 응대 알림",
                loginId= user_model.email,
                body=msg,
                popSize="800, 600",
                imageUrl="",
                linkUrl=""
            ) 
            call_messenger_api(ntalk_messenger_model)
         
        #지원요청 시 담당자에게 알림  
        elif type == "WAITING":
            #담당자 목록 조회
            user_model_list = user_repository.get_user_by_role_cd_list(db=db, role_cd_list=['HELP'], user_id=chatroom_model.user_id)  
            # user_model_list 사이즈 출력
            logger.info("user_model_list size : "+str(len(user_model_list)))     
            
            msg = f"""아래 문의에 대한 지원 대기 건이 있습니다.

            ○ 제목: {chatroom_model.chat_title}
            ○ 내용: {chatroom_model.chat_content}
            ○ 태그: {chatroom_model.hashtag}
            ○ 링크: <a href=\"{direct_url}\">문의 대화방 바로가기</a>"""
            
            for user_model in user_model_list:
                ntalk_messenger_model = models.NtalkMessengerModel(
                title="업무지원챗봇 지원요청 알림",
                loginId= user_model.email,
                body=msg, 
                popSize="800, 600",
                imageUrl="",
                linkUrl=""
                )
                call_messenger_api(ntalk_messenger_model)
            
        elif type == "MIGRATION":
            user_model = user_repository.get_user_by_user_id(db=db, user_id=chatroom_model.mgr_user_id)
            if user_model == None:
                logger.error("Failed to get user model")
            
            msg = f"""{user_model.user_nm} 매니저님께서 아래 문의에 담당자로 지정되었습니다.

            ○ 제목: {chatroom_model.chat_title}
            ○ 내용: {chatroom_model.chat_content}
            ○ 태그: {chatroom_model.hashtag}
            ○ 링크: <a href=\"{direct_url}\">문의 대화방 바로가기</a>"""
                
            ntalk_messenger_model = models.NtalkMessengerModel(
                title="업무지원챗봇 담당자 이관 알림",
                loginId=user_model.email,
                body=msg,
                popSize="800, 600",
                imageUrl="",
                linkUrl=""
             )
            call_messenger_api(ntalk_messenger_model)

        # 안 읽은 채팅 메시지 알림
        elif type == "UNREAD":
            user_model = user_repository.get_user_by_user_id(db=db, user_id=chatroom_model.user_id)
            if user_model == None:
                logger.error("Failed to get user model")
            
            msg = f"""안 읽은 챗봇 메시지를 확인해 주세요.

            ○ 제목: {chatroom_model.chat_title}
            ○ 내용: {chatroom_model.chat_content}
            ○ 태그: {chatroom_model.hashtag}
            ○ 링크: <a href=\"{direct_url}\">문의 대화방 바로가기</a>"""
                
            ntalk_messenger_model = models.NtalkMessengerModel(
                title="안 읽은 챗봇 메시지 알림",
                loginId=user_model.email,
                body=msg,
                popSize="800, 600",
                imageUrl="",
                linkUrl=""
             )
            logger.info("ntalk_messenger_model : "+str(ntalk_messenger_model)) 
            call_messenger_api(ntalk_messenger_model)

        # 지원종료 요청 메시지 알림
        elif type == "CLOSE":
            user_model = user_repository.get_user_by_user_id(db=db, user_id=chatroom_model.user_id)
            if user_model == None:
                logger.error("Failed to get user model")
            
            msg = f"""챗봇에게 문의주신 궁금증은 해결되셨나요?
            추가 문의가 있으시면 질문을 남겨주세요.
            궁금증이 해결되셨다면 채팅방 종료 버튼을 눌러주세요.
            * 추가 문의가 없으신 경우 24시간 후 채팅방이 자동 종료됩니다.

            ○ 제목: {chatroom_model.chat_title}
            ○ 태그: {chatroom_model.hashtag}
            ○ 링크: <a href=\"{direct_url}\">문의 대화방 바로가기</a>"""
                
            ntalk_messenger_model = models.NtalkMessengerModel(
                title="채팅방 종료 처리 알림",
                loginId=user_model.email,
                body=msg,
                popSize="800, 600",
                imageUrl="",
                linkUrl=""
             )
            logger.info("ntalk_messenger_model : "+str(ntalk_messenger_model)) 
            call_messenger_api(ntalk_messenger_model)
            
    except Exception as e:
        logger.error(f"send_msg_to_messenger: {e}")
        raise HTTPException(status_code=500, detail=str(e))

def thread_send_msg_to_messenger(db: Session, type:str, chat_id:int):
    chatSummaryModule.chat_summary(chat_id)
    thread = Thread(target=send_msg_to_messenger, kwargs={"db":db , "type": type , "chat_id": chat_id})
    thread.start()