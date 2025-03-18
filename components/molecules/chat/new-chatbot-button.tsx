"use client";
import { Button } from "@/components/ui/button";
import { useChatroomRegister } from "@/lib/hooks/client/use-chatroom-fetcher";
import { useClientSession } from "@/lib/hooks/client/use-client-session";
import { searchStore } from "@/store/search-store";

import { Mail, Plus } from "lucide-react";
import { useEffect, useState } from "react";

interface ButtonNewChatProps {
  id?: string;
  children: React.ReactNode;
  chatroomList: ChatRoomType[];
  setChatroomList: (data: ChatRoomType[]) => void;
  setSelectedChatId: (data: number | null) => void;
}
export function NewChatBotButton({
  children,
  chatroomList,
  setChatroomList,
  setSelectedChatId,
}: ButtonNewChatProps) {
  const user: UsersType | null = useClientSession();
  // console.log("NewChatBOtButton - user: " + JSON.stringify(user));
  const { trigger: chatroomRegisterTrigger, isMutating } =
    useChatroomRegister();

  const { getStateCdList, setIsNewChat } = searchStore();
  const [newChatId, setNewChatId] = useState<number | null>(null);

  useEffect(() => {
    if (newChatId !== null) {
      setSelectedChatId(newChatId);
    }
  }, [newChatId]);

  const onChatroomRegister = async () => {
    const param_chatroom: ChatRoomType = {
      user_id: user?.user_id,
      state_cd: "CRSTT010", //채팅중
      with_bot_yn: true,
      chat_title: "New Chat",
      chat_content: "New Chat",
      hashtag: "",
      chatroom_user: [],
      service_cd:""
    };
    const result = await chatroomRegisterTrigger({
      body: param_chatroom,
    });

    // 봇과 새로운 대화 클릭 시 봇과 대화중 토글 활성화
    if (!getStateCdList("MyRequestPage").includes("CRSTT010")) {
      setIsNewChat(true);
    }
    setChatroomList([result, ...chatroomList]);
    setNewChatId(result.chat_id);
  };

  return (
    <Button
      className="text-[0.8rem] rounded-full font-bold bg-nice-blue-100/20 text-nice-blue-500 hover:bg-nice-blue-100 hover:text-white"
      onClick={onChatroomRegister}
    >
      <Plus className="w-4 h-4 mr-2" /> {children}
    </Button>
  );
}
