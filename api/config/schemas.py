
# 데이터베이스 모델

from sqlalchemy import Boolean, Column, ForeignKey, Integer, String, Float, DateTime
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship
from .database import Base


class CodeGroup(Base):
    __tablename__ = "code_group"
    code_group_id = Column(String, primary_key=True, index=True)
    code_group_name = Column(String, unique=False, index=True)
    code_group_desc = Column(String, unique=False, index=False)
    code_group_order = Column(Float, unique=False, index=False)
    code_group_use_yn = Column(Boolean, unique=False, index=False)

    def __repr__(self) -> str:
        return f"CodeGroup(code_group_id={self.code_group_id}, code_group_name={self.code_group_name}, code_group_desc={self.code_group_desc}, code_group_order={self.code_group_order}, code_group_use_yn={self.code_group_use_yn}, created_by={self.created_by}, created_time={self.created_time}, modified_by={self.modified_by}, last_modified_time={self.last_modified_time}, delete_yn={self.delete_yn})"


class Code(Base):
    __tablename__ = "code"
    code_id = Column(String, primary_key=True, index=True)
    code_group_id = Column(String, ForeignKey("code_group.code_group_id"))
    code_name = Column(String, unique=False, index=True)
    code_desc = Column(String, unique=False, index=False)
    code_value = Column(String, unique=False, index=False)
    code_order = Column(Float, unique=False, index=False)
    code_use_yn = Column(Boolean, unique=False, index=False)

    def __repr__(self) -> str:
        return f"Code(code_id={self.code_id}, code_group_id={self.code_group_id}, code_name={self.code_name}, code_desc={self.code_desc}, code_value={self.code_value}, code_order={self.code_order}, code_use_yn={self.code_use_yn}, created_by={self.created_by}, created_time={self.created_time}, modified_by={self.modified_by}, last_modified_time={self.last_modified_time}, delete_yn={self.delete_yn})"


class Faq(Base):
    __tablename__ = "faq"
    faq_id = Column(Integer, primary_key=True, index=True)
    question = Column(String, unique=False, index=False)
    answer = Column(String, unique=False, index=False)
    ref_service_cd = Column(String, ForeignKey("code.code_id"))
    ref_link = Column(String, unique=False, index=False)

    def __repr__(self) -> str:
        return f"Faq(faq_id={self.faq_id}, question={self.question}, answer={self.answer}, ref_service_cd={self.ref_service_cd}, ref_link={self.ref_link}, created_by={self.created_by}, created_time={self.created_time}, modified_by={self.modified_by}, last_modified_time={self.last_modified_time}, delete_yn={self.delete_yn})"


class ApiTracking(Base):
    __tablename__ = "api_tracking"
    tracking_id = Column(Integer, primary_key=True, index=True)
    request_url = Column(String, unique=False, index=False)
    method = Column(String, unique=False, index=False)
    response_status_code = Column(String, unique=False, index=False)
    input = Column(String, unique=False, index=False)
    output = Column(String, unique=False, index=False)

    def __repr__(self) -> str:
        return f"ApiTracking(tracking_id={self.tracking_id}, request_url={self.request_url}, method={self.method}, response_status_code={self.response_status_code}, input={self.input}, output={self.output}, created_by={self.created_by}, created_time={self.created_time}, modified_by={self.modified_by}, last_modified_time={self.last_modified_time}, delete_yn={self.delete_yn})"


class User(Base):
    __tablename__ = "user"
    user_id = Column(Integer, primary_key=True, index=True)
    user_nm = Column(String, unique=False, index=True)
    email = Column(String, unique=False, index=True)
    password = Column(String, unique=False, index=False)
    role_cd = Column(String, unique=False, index=False)
    mng_services = Column(String, unique=False, index=False)
    ip = Column(String, unique=False, index=False)
    dept_nm = Column(String, unique=False, index=False)
    position_nm = Column(String, unique=False, index=False)
    emp_no = Column(String, unique=False, index=False)
    guide_tour_json = Column(String, unique=False, index=False)

    def __repr__(self) -> str:
        return f"User(user_id={self.user_id}, user_nm={self.user_nm}, email={self.email}, password={self.password}, role_cd={self.role_cd}, created_by={self.created_by}, created_time={self.created_time}, modified_by={self.modified_by}, last_modified_time={self.last_modified_time}, delete_yn={self.delete_yn}, mng_services={self.mng_services}, ip={self.ip}, dept_nm={self.dept_nm}, position_nm={self.position_nm}, emp_no={self.emp_no}, guide_tour_json={self.guide_tour_json})"


class Chatroom(Base):
    __tablename__ = "chatroom"
    chat_id = Column(Integer, primary_key=True, index=True)
    chat_group_id = Column(Integer, unique=False, index=False)
    state_cd = Column(String, unique=False, index=False)
    with_bot_yn = Column(Boolean, unique=False, index=False)
    chat_title = Column(String, unique=False, index=False)
    chat_content = Column(String, unique=False, index=False)
    hashtag = Column(String, unique=False, index=False)
    user_id = Column(Integer, unique=False, index=False)
    mgr_user_id = Column(Integer, unique=False, index=False)
    service_cd = Column(String,  unique=False, index=False)

    def __repr__(self) -> str:
        return f"Chatroom(chat_id={self.chat_id}, chat_group_id={self.chat_group_id}, state_cd={self.state_cd}, with_bot_yn={self.with_bot_yn}, chat_title={self.chat_title}, chat_content={self.chat_content}, hashtag={self.hashtag}, created_by={self.created_by}, created_time={self.created_time}, modified_by={self.modified_by}, last_modified_time={self.last_modified_time}, delete_yn={self.delete_yn}, user_id={self.user_id}, mgr_user_id={self.mgr_user_id}, service_cd={self.service_cd})"


class ChatroomUser(Base):
    __tablename__ = "chatroom_user"
    chat_user_id = Column(Integer, primary_key=True, index=True)
    chat_id = Column(Integer, ForeignKey("chatroom"))
    user_id = Column(Integer, ForeignKey("user"))
    user_role_cd = Column(String, unique=False, index=False)
    chat_user_state_cd = Column(String, unique=False, index=False)

    def __repr__(self) -> str:
        return f"ChatroomUser(chat_user_id={self.chat_user_id}, chat_id={self.chat_id}, user_id={self.user_id}, user_role_cd={self.user_role_cd}, chat_user_state_cd={self.chat_user_state_cd}, created_by={self.created_by}, created_time={self.created_time}, modified_by={self.modified_by}, last_modified_time={self.last_modified_time}, delete_yn={self.delete_yn})"


class ChatMessage(Base):
    __tablename__ = "chat_message"
    chat_msg_id = Column(Integer, primary_key=True, index=True)
    chat_id = Column(Integer, ForeignKey("chatroom"))
    user_id = Column(Integer, ForeignKey("user"))
    user_role_cd = Column(String, unique=False, index=False)
    chat_message = Column(String, unique=False, index=False)
    selected_cd = Column(String, unique=False, index=False)
    previous_query = Column(String, unique=False, index=False)

    def __repr__(self) -> str:
        return f"ChatMessage(chat_msg_id={self.chat_msg_id}, chat_id={self.chat_id}, user_id={self.user_id}, user_role_cd={self.user_role_cd}, chat_message={self.chat_message}, selected_cd={self.selected_cd}, previous_query={self.previous_query} ,created_by={self.created_by}, created_time={self.created_time}, modified_by={self.modified_by}, last_modified_time={self.last_modified_time}, delete_yn={self.delete_yn})"


class ChatroomHistory(Base):
    __tablename__ = "chatroom_history"
    chat_hist_id = Column(Integer, primary_key=True, index=True)
    chat_id = Column(Integer, unique=False, index=False)
    chat_group_id = Column(Integer, unique=False, index=False)
    state_cd = Column(String, unique=False, index=False)
    with_bot_yn = Column(Boolean, unique=False, index=False)
    chat_title = Column(String, unique=False, index=False)
    chat_content = Column(String, unique=False, index=False)
    hashtag = Column(String, unique=False, index=False)
    user_id = Column(Integer, unique=False, index=False)
    mgr_user_id = Column(Integer, unique=False, index=False)

    def __repr__(self) -> str:
        return f"ChatroomHistory(chat_hist_id={self.chat_hist_id}, chat_id={self.chat_id}, chat_group_id={self.chat_group_id}, state_cd={self.state_cd}, with_bot_yn={self.with_bot_yn}, chat_title={self.chat_title}, chat_content={self.chat_content}, hashtag={self.hashtag}, created_by={self.created_by}, created_time={self.created_time}, modified_by={self.modified_by}, last_modified_time={self.last_modified_time}, delete_yn={self.delete_yn}, user_id={self.user_id}, mgr_user_id={self.mgr_user_id})"


class Qna(Base):
    __tablename__ = "qna"
    qna_id = Column(Integer, primary_key=True, index=True)
    chat_group_id = Column(Integer,  unique=False, index=False)
    user_id = Column(Integer, ForeignKey("user"))
    ref_service_cd = Column(String, unique=False, index=False)
    question = Column(String, unique=False, index=False)
    answer = Column(String, unique=False, index=False)
    solved_yn = Column(Boolean, unique=False, index=False)
    satisfaction = Column(Float, unique=False, index=False)

    def __repr__(self) -> str:
        return f"Qna(qna_id={self.qna_id}, chat_group_id={self.chat_group_id}, user_id={self.user_id}, ref_service_cd={self.ref_service_cd}, question={self.question}, answer={self.answer}, solved_yn={self.solved_yn}, satisfaction={self.satisfaction}, created_by={self.created_by}, created_time={self.created_time}, modified_by={self.modified_by}, last_modified_time={self.last_modified_time}, delete_yn={self.delete_yn})"


class SelfServiceHistory(Base):
    __tablename__ = "self_service_history"
    self_service_id = Column(Integer, primary_key=True, index=True)
    user_id = Column(Integer, ForeignKey("user"))
    self_service_cd = Column(String, unique=False, index=False)
    input = Column(String, unique=False, index=False)
    output = Column(String, unique=False, index=False)
    chat_id = Column(Integer, ForeignKey("chatroom"))

    def __repr__(self) -> str:
        return f"SelfServiceHistory(self_service_id={self.self_service_id}, user_id={self.user_id}, self_service_cd={self.self_service_cd}, input={self.input}, output={self.output}, chat_id={self.chat_id}, created_by={self.created_by}, created_time={self.created_time}, modified_by={self.modified_by}, last_modified_time={self.last_modified_time}, delete_yn={self.delete_yn})"


class ChatbotRequestHistory(Base):
    __tablename__ = "chatbot_request_history"
    request_hist_id = Column(Integer, primary_key=True, index=True)
    chat_id = Column(Integer, ForeignKey("chatroom"))
    bot_type_cd = Column(String, unique=False, index=False)
    url = Column(String, unique=False, index=False)
    input = Column(String, unique=False, index=False)
    output = Column(String, unique=False, index=False)

    def __repr__(self) -> str:
        return f"ChatbotRequestHistory(request_hist_id={self.request_hist_id}, chat_id={self.chat_id}, bot_type_cd={self.bot_type_cd}, url={self.url}, input={self.input}, output={self.output}, created_by={self.created_by}, created_time={self.created_time}, modified_by={self.modified_by}, last_modified_time={self.last_modified_time}, delete_yn={self.delete_yn})"


class AttachFile(Base):
    __tablename__ = "attach_file"
    file_id = Column(Integer, primary_key=True, index=True)
    ref_id = Column(Integer, unique=False, index=False)
    file_path = Column(String, unique=False, index=False)
    file_name = Column(String, unique=False, index=False)
    orign_file_name = Column(String, unique=False, index=False)

    def __repr__(self) -> str:
        return f"AttachFile(file_id={self.file_id}, ref_id={self.ref_id}, file_path={self.file_path}, file_name={self.file_name}, orign_file_name={self.orign_file_name}, created_by={self.created_by}, created_time={self.created_time}, modified_by={self.modified_by}, last_modified_time={self.last_modified_time}, delete_yn={self.delete_yn})"


class EmbeddingFile(Base):
    __tablename__ = "embedding_file"

    file_id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    file_path = Column(String, unique=False, index=False)
    file_name = Column(String, unique=False, index=False)
    orign_file_name = Column(String, unique=False, index=False)
    category_name = Column(String, unique=False, index=False)
    service_cd = Column(String, unique=False, index=False)
    service_name = Column(String, unique=False, index=False)
    embedding_yn = Column(Boolean, unique=False, index=False)
    service_desc = Column(String, unique=False, index=False)

    def __repr__(self) -> str:
        return (f"EmbeddingFile(file_id={self.file_id}, file_path={self.file_path}, "
                f"file_name={self.file_name}, orign_file_name={self.orign_file_name}, "
                f"category_name={self.category_name}, service_cd={self.service_cd}, "
                f"service_name={self.service_name}, embedding_yn={self.embedding_yn}, "
                f"created_by={self.created_by}, created_time={self.created_time}, "
                f"modified_by={self.modified_by}, last_modified_time={self.last_modified_time}, "
                f"delete_yn={self.delete_yn}, service_desc={self.service_desc})")


class UnreadChatMessage(Base):
    __tablename__ = "unread_chat_message"
    unread_id = Column(Integer, primary_key=True, index=True)
    chat_msg_id = Column(Integer, unique=False, index=False)
    chat_id = Column(Integer, unique=False, index=False)
    user_id = Column(Integer, unique=False, index=False)

    def __repr__(self) -> str:
        return f"UnreadChatMessage(unread_id={self.unread_id}, chat_msg_id={self.chat_msg_id}, chat_id={self.chat_id}, user_id={self.user_id}, created_by={self.created_by}, created_time={self.created_time}, modified_by={self.modified_by}, last_modified_time={self.last_modified_time}, delete_yn={self.delete_yn})"

class Feedback(Base):
    __tablename__ = "feedback"

    feedback_id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    contents = Column(String, nullable=True)
    image_path = Column(String, nullable=True)
    state_cd = Column(String, nullable=False)
    mgr_user_id = Column(Integer, nullable=True)
    processing_detail = Column(String, nullable=True)
    processing_date = Column(DateTime(timezone=True), nullable=True)

    def __repr__(self) -> str:
        return (f"Feedback(feedback_id={self.feedback_id}, contents={self.contents}, "
                f"image_path={self.image_path}, state_cd={self.state_cd}, mgr_user_id={self.mgr_user_id}, "
                f"processing_detail={self.processing_detail}, processing_date={self.processing_date}, "
                f"created_by={self.created_by}, created_time={self.created_time}, "
                f"modified_by={self.modified_by}, last_modified_time={self.last_modified_time}, "
                f"delete_yn={self.delete_yn})")
    
class Notice(Base):
    __tablename__ = "notice"

    notice_id = Column(Integer, primary_key=True, autoincrement=True)
    contents = Column(String, nullable=True)
    start_time = Column(String(12), nullable=True)
    end_time = Column(String(12), nullable=True)

    def __repr__(self):
        return (f"NoticeModel(notice_id={self.notice_id}, contents={self.contents}, "
                f"start_time={self.start_time}, end_time={self.end_time}, "
                f"created_by={self.created_by}, created_time={self.created_time}, "
                f"modified_by={self.modified_by}, last_modified_time={self.last_modified_time}, "
                f"delete_yn={self.delete_yn})")