
from functools import partial
from fastapi import HTTPException
from api.config.globals import logger
import api.config.globals  as g
import requests
from ..repositories import user_repository, embedding_file_repository, unread_chat_message_repository, chatroom_repository
from apscheduler.schedulers.background import BackgroundScheduler
from ..config import models, schemas, database
from datetime import datetime
from apscheduler.triggers.cron import CronTrigger
from pytz import timezone

scheduler = BackgroundScheduler()
 
db_session = next(database.get_db())
 
scheduler.add_job(partial(user_repository.sync_user,db_session), "interval", seconds=60*60*6,)
scheduler.add_job(partial(embedding_file_repository.get_embedding_file_list,db_session), "interval", seconds=60*60*6,next_run_time=datetime.now())
scheduler.add_job(partial(unread_chat_message_repository.get_unread_chat_message_of_support,db_session), "interval", seconds=60*10,)
scheduler.add_job(partial(chatroom_repository.get_support_chatroom_notice, db_session),CronTrigger(hour=0, minute=0, timezone=timezone('Asia/Seoul')))
 
# def sync_user_info():
#     print("sync_user_info")
#     try:
#         environment = g.env_settings.environment
#         if environment != "PRODUCTION":
#             return
        
#         url = g.env_settings.apim_url+"/cmn-svc/1/gw/all-users"
#         headers = {
#             "ApiKey": g.env_settings.apim_api_key
#         }
#         response = requests.get(url, headers=headers)

#         rsp_json  = response.json()
#         if response.status_code == 200 and rsp_json.get("status") == "SUCCESS":
#             print("공용API 호출 결과: ", response.data)
#             #usr_json  = response.json()
#             #api_user_list = usr_json.get("users")
            
#             user_models = user_repository.get_all_users()
#             print("DB 사용자 조회 결과: ", user_models.data)
            
#             #user_models에서 emp_no 리스트 추출
#             emp_no_list = []
#             for user_model in user_models:
#                 emp_no_list.append(user_model.emp_no)
                
#             #TODO DB 데이터 싱크 로직   
#             api_user_list = rsp_json.get("data")
#             for api_user in api_user_list:
#                 if api_user.get("emp_no") not in emp_no_list:
#                     print("DB에 없는 사용자: ", api_user)
#                     usr_model = models.UserModel(
#                         emp_no=api_user.get("sabun"),
#                         user_nm=api_user.get("username"),
#                         email=api_user.get("useremail"),
#                         role_cd=api_user.get("USR"),
#                         ip=api_user.get("cefIpaddress"),
#                         delete_yn=False
#                     )
#                     user_repository.register_user(usr_model)
#                 else:
#                     print("DB에 있는 사용자: ", api_user)
#         else:
#             print("Failed to retrieve data:"+response.text)
#     except Exception as e:
#         logger.error(f"get_user_detail: {e}")
#         raise HTTPException(status_code=500, detail=str(e))


    