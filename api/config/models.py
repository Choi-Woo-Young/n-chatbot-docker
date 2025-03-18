# pydantic : type annotation을 이용하여 데이터를 검증하고 설정들을 관리(입력데이터가 제대로 들어왔는지 보장하는 것이 아니라 출력되는 데이터의 타입을 보장)

from datetime import datetime
import json
from typing import List, Union
from pydantic import BaseModel, Field

from api.config.schemas import ChatMessage, Chatroom, ChatroomUser, Qna


class BaseM(BaseModel):
    created_by: Union[int, None] = None
    created_time: Union[datetime, None] = Field(default_factory=datetime.now)
    modified_by: Union[int, None] = None
    last_modified_time: Union[datetime, None] = Field(default_factory=datetime.now)
    delete_yn: Union[bool, None] = Field(default=False)


class CodeGroupModel(BaseM):
    code_group_id: Union[str, None] = None
    code_group_name: Union[str, None] = None
    code_group_desc: Union[str, None] = None
    code_group_order: Union[float, None] = None
    code_group_use_yn: Union[bool, None] = None

    class Config:
        from_attributes = True


class CodeModel(BaseM):
    code_id: Union[str, None] = None
    code_group_id: Union[str, None] = None
    code_name: Union[str, None] = None
    code_desc: Union[str, None] = None
    code_value: Union[str, None] = None
    code_order: Union[float, None] = None
    code_use_yn: Union[bool, None] = None

    class Config:
        from_attributes = True


class FaqModel(BaseM):
    faq_id: Union[int, None] = None
    question: Union[str, None] = None
    answer: Union[str, None] = None
    ref_service_cd: Union[str, None] = None
    ref_link: Union[str, None] = None

    class Config:
        from_attributes = True


class ApiTrackingModel(BaseM):
    tracking_id: Union[int, None] = None
    request_url: Union[str, None] = None
    method: Union[str, None] = None
    response_status_code: Union[str, None] = None
    input: Union[dict, str, None] = None
    output: Union[dict, str, list, None] = None

    class Config:
        from_attributes = True


class UserModel(BaseM):
    user_id: Union[int, None] = None
    user_nm: Union[str, None] = None
    email: Union[str, None] = None
    password: Union[str, None] = None
    role_cd: Union[str, None] = None
    mng_services: Union[str, None] = None
    ip: Union[str, None] = None
    dept_nm: Union[str, None] = None
    position_nm: Union[str, None] = None
    emp_no: Union[str, None] = None
    hp_num: Union[str, None] = None
    guide_tour_json: Union[str, None] = None

    class Config:
        from_attributes = True
        
    def json_to_model(json_data):
        return UserModel(
            user_nm=json_data.get("username"),
            emp_no=json_data.get("sabun"),
            email=json_data.get("useremail"),
            ip=json_data.get("cefIpaddress"),
            hp_num=json_data.get("cellphoneno")
        )


class ChatRoomModel(BaseM):
    chat_id: Union[int, None] = None
    chat_group_id: Union[int, None] = None
    state_cd: Union[str, None] = None
    with_bot_yn: Union[bool, None] = None
    chat_title: Union[str, None] = None
    chat_content: Union[str, None] = None
    hashtag: Union[str, None] = None
    ref_chat_id: Union[int, None] = None
    user_id: Union[int, None] = None
    mgr_user_id: Union[int, None] = None
    latest_message_time: Union[datetime, None] = None
    unread_count: Union[int, None] = None
    user_nm: Union[str, None] = None
    chatroom_user_id_list: Union[List[int], None] = None
    service_cd: Union[str, None] = None

    class Config:
        from_attributes = True
        
    def model_dump_json(self):
        def default_converter(o):
            if isinstance(o, datetime):
                return o.isoformat()
            raise TypeError(f'Object of type {o.__class__.__name__} is not JSON serializable')
    
        return json.dumps(self.dict(), default=default_converter, ensure_ascii=False, indent=4)
    
    def model_dump_schema(self):
        return Chatroom(
            chat_id=self.chat_id,
            chat_group_id=self.chat_group_id,
            state_cd=self.state_cd,
            with_bot_yn=self.with_bot_yn,
            chat_title=self.chat_title,
            chat_content=self.chat_content,
            hashtag=self.hashtag,
            created_by=self.created_by,
            created_time=self.created_time,
            modified_by=self.modified_by,
            last_modified_time=self.last_modified_time,
            delete_yn=self.delete_yn,
            user_id=self.user_id,
            mgr_user_id=self.mgr_user_id,
            service_cd=self.service_cd
        )


class ChatRoomUserModel(BaseM):
    chat_user_id: Union[int, None] = None
    chat_id: Union[int, None] = None
    user_id: Union[int, None] = None
    user_role_cd: Union[str, None] = None
    chat_user_state_cd: Union[str, None] = None

    class Config:
        from_attributes = True
        
    def model_dump_schema(self):
        return ChatroomUser(
            chat_id=self.chat_id,
            user_id=self.user_id,
            user_role_cd=self.user_role_cd,
            chat_user_state_cd=self.chat_user_state_cd
        )


class ChatMessageModel(BaseM):
    chat_msg_id: Union[int, None] = None
    chat_id: Union[int, None] = None
    user_id: Union[int, None] = None
    user_role_cd: Union[str, None] = None
    chat_message: Union[str, None] = None
    selected_cd: Union[str, None] = None
    previous_query: Union[str, None] = None
    user_nm: Union[str, None] = None
    dept_nm: Union[str, None] = None
    ref_sources: Union[str, None] = None
    unread_count: Union[int, None] = None
    service_cd: Union[str, None] = None
    converted_utterance: Union[str, None] = None

    class Config:
        from_attributes = True
        
    def model_dump_schema(self):
        return ChatMessage(
            chat_id=self.chat_id,
            user_id=self.user_id,
            user_role_cd=self.user_role_cd,
            chat_message=self.chat_message,
            selected_cd=self.selected_cd,
            previous_query=self.previous_query
        )
    def json_to_model(json_data):
        return ChatMessageModel(
            chat_msg_id=json_data.get("chat_msg_id"),
            chat_id=json_data.get("chat_id"),
            user_id=json_data.get("user_id"),
            user_role_cd=json_data.get("user_role_cd"),
            chat_message=json_data.get("chat_message"),
            selected_cd=json_data.get("selected_cd"),
            previous_query=json_data.get("previous_query"),
            user_nm=json_data.get("user_nm"),
            dept_nm=json_data.get("dept_nm"),
            unread_count=json_data.get("unread_count"),
            service_cd=json_data.get("service_cd"),
            converted_utterance=json_data.get("converted_utterance")
        )
    
        


class ChatRoomHistoryModel(BaseM):
    chat_hist_id: Union[int, None] = None
    chat_id: Union[int, None] = None
    chat_group_id: Union[int, None] = None
    state_cd: Union[str, None] = None
    with_bot_yn: Union[bool, None] = None
    chat_title: Union[str, None] = None
    chat_content: Union[str, None] = None
    hashtag: Union[str, None] = None
    user_id: Union[int, None] = None
    mgr_user_id: Union[int, None] = None

    class Config:
        from_attributes = True


class QnaModel(BaseM):
    qna_id: Union[int, None] = None
    chat_group_id: Union[int, None] = None
    user_id: Union[int, None] = None
    ref_service_cd: Union[str, None] = None
    question: Union[str, None] = None
    answer: Union[str, None] = None
    solved_yn: Union[bool, None] = None
    satisfaction: Union[float, None] = None

    def model_dump_schema(self):
        return Qna(
            chat_group_id=self.chat_group_id,
            user_id=self.user_id,
            ref_service_cd=self.ref_service_cd,
            question=self.question,
            answer=self.answer,
            solved_yn=self.solved_yn,
            satisfaction=self.satisfaction
        )
    class Config:
        from_attributes = True


class SelfServiceHistoryModel(BaseM):
    self_service_id: Union[int, None] = None
    user_id: Union[int, None] = None
    self_service_cd: Union[str, None] = None
    input: Union[str, None] = None
    output: Union[str, None] = None
    chat_id: Union[int, None] = None

    class Config:
        from_attributes = True


class ChatbotRequestHistoryModel(BaseM):
    request_hist_id: Union[int, None] = None
    chat_id: Union[int, None] = None
    bot_type_cd: Union[str, None] = None
    url: Union[str, None] = None
    input: Union[str, None] = None
    output: Union[str, None] = None

    class Config:
        from_attributes = True


class AttachFileModel(BaseM):
    file_id: Union[int, None] = None
    ref_id: Union[int, None] = None
    file_path: Union[str, None] = None
    file_name: Union[str, None] = None
    orign_file_name: Union[str, None] = None

    class Config:
        from_attributes = True


class EmbeddingFileModel(BaseM):
    file_id: Union[int, None] = None
    file_path: Union[str, None] = None
    file_name: Union[str, None] = None
    orign_file_name: Union[str, None] = None
    category_name: Union[str, None] = None
    service_cd: Union[str, None] = None
    service_name: Union[str, None] = None
    embedding_yn: Union[bool, None] = None
    service_desc: Union[str, None] = None

    class Config:
        from_attributes = True


class NtalkMessengerModel(BaseM):
    title: Union[str, None] = None
    loginId: Union[str, None] = None
    body: Union[str, None] = None
    linkUrl: Union[str, None] = None
    popSize: Union[str, None] = None
    imageUrl: Union[str, None] = None
   
    def model_dump_json(self):
        def default_converter(o):
            if isinstance(o, datetime):
                return o.isoformat()
            raise TypeError(f'Object of type {o.__class__.__name__} is not JSON serializable')
    
        return json.dumps(self.dict(), default=default_converter, ensure_ascii=False, indent=4)
    
    def model_dump(self):
        return {
            "title": self.title,
            "loginId": self.loginId,
            "body": self.body,
            "linkUrl": self.linkUrl,
            "popSize": self.popSize,
            "imageUrl": self.imageUrl
        }
        
    class Config:
        from_attributes = True
        
class UnreadChatMessage(BaseM):
    unread_id: Union[int, None] = None
    chat_msg_id: Union[int, None] = None
    chat_id: Union[int, None] = None
    user_id: Union[int, None] = None

    class Config:
        from_attributes = True
    
    def model_dump_schema(self):
        return {
            "unread_id": self.unread_id,
            "chat_msg_id": self.chat_msg_id,
            "chat_id": self.chat_id,
            "user_id": self.user_id
        }
  
class FeedbackModel(BaseM):
    feedback_id: Union[int, None] = None
    contents: Union[str, None] = None
    image_path: Union[str, None] = None
    state_cd: Union[str, None] = None
    mgr_user_id: Union[int, None] = None
    processing_detail: Union[str, None] = None
    processing_date: Union[str, None] = None

    class Config:
        from_attributes = True

class NoticeModel(BaseM):
    notice_id: Union[int, None] = None
    contents: Union[str, None] = None
    start_time: Union[str, None] = None
    end_time: Union[str, None] = None

    class Config:
        from_attributes = True