"use client";
import { useSearchParams, useRouter, usePathname } from "next/navigation";
import { useChatroom } from "@/lib/hooks/client/use-chatroom-fetcher";

import { useEffect, useState } from "react";

import { Chatroom } from "@/components/layouts/chatroom";

export default function WaitingPage() {
  const searchParams = useSearchParams();
  const router = useRouter();
  const pathname = usePathname();
  const param_chat_id = searchParams.get("chat_id");

  const { trigger: chatroomTrigger } = useChatroom();
  const [chatroomList, setChatroomList] = useState<ChatRoomType[]>([]);
  const [selectedChatId, setSelectedChatId] = useState<number | null>(null);
  const [selectedChatroom, setSelectedChatroom] = useState<ChatRoomType>();
  const [refresh, setRefresh] = useState(false);
  const availableStateCdList = ["CRSTT030", "CRSTT040"];

  useEffect(() => {
    console.log("param_chat_id", param_chat_id);
    if (param_chat_id) {
      setSelectedChatId(Number(param_chat_id));
    }
  }, [chatroomList]);

  useEffect(() => {
    selectedChatId != 0 &&
      selectedChatId != null &&
      chatroomTrigger({ body: { chatId: selectedChatId } }).then((data) => {
        setSelectedChatroom(data);
      });
    selectedChatId &&
      selectedChatId != 0 &&
      router.replace(`${pathname}?chat_id=${selectedChatId}`);
  }, [selectedChatId]);

  return (
    <Chatroom
      chatroomList={chatroomList}
      setChatroomList={setChatroomList}
      selectedChatroom={selectedChatroom ?? {}}
      setSelectedChatroom={setSelectedChatroom}
      selectedChatId={selectedChatId}
      setSelectedChatId={setSelectedChatId}
      refresh={refresh}
      setRefresh={setRefresh}
      availableStateCdList={availableStateCdList}
      searchKey="WaitingPage"
      isSupport={true}
      showToggle={true}
    />
  );
}
