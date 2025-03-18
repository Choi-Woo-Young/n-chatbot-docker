declare interface ChatMsgType extends Record<string, any> {
  chat_msg_id?: number;
  chat_id?: number;
  user_id?: number;
  user_role_cd?: string;
  chat_message?: string;
  selected_cd?: string;
  previous_query?: string;
  unread_count?: number;

  user_nm?: string;
  dept_nm?: string;

  create_by?: number;
  create_date?: string;
  update_by?: number;
  update_date?: string;
  last_modified_time?: string;
  del_yn?: string;

  msg_type?: string;
  msg_code?: string;

  service_cd?: string; //서비스 코드
}
