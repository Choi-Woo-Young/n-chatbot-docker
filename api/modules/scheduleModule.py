
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