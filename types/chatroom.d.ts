declare interface ChatRoomType extends Record<string, any> {
  chat_id?: number;
  chat_group_id?: number;
  state_cd?: string;
  with_bot_yn?: boolean;
  chat_title?: string;
  chat_content?: string;
  hashtag?: string;
  user_id?: number;
  mgr_user_id?: number;
  chatroom_user?: ChatRoomUserType[];
  latest_message_time?: string;
  unread_count?: number;
  user_nm?: string;
  chatroom_user_id_list?: number[];
  service_cd?: string;
  
  ref_chat_id?: number;
  create_by?: number;
  create_date?: string;
  update_by?: number;
  update_date?: string;
  last_modified_time?: string;
  del_yn?: string;
}

declare interface ChatRoomLayoutType {
  chatroomList: ChatRoomType[];
  setChatroomList: Dispatch<SetStateAction<ChatRoomType[]>>;
  selectedChatroom: ChatRoomType;
  setSelectedChatroom: Dispatch<SetStateAction<ChatRoomType>>;
  selectedChatId: number | null;
  setSelectedChatId: Dispatch<SetStateAction<number | null>>;
  refresh: boolean;
  setRefresh: Dispatch<SetStateAction<boolean>>;
  availableStateCdList: string[];
  searchKey: string;
  isSupport?: boolean;
  showToggle: boolean;
}
