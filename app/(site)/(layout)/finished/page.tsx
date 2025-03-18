"use client";
import {
  useChatroom,
  useChatroomSupportList,
} from "@/lib/hooks/client/use-chatroom-fetcher";

import { Chatroom } from "@/components/layouts/chatroom";
import { useEffect, useState } from "react";
import { useSearchParams, useRouter, usePathname } from "next/navigation";

export default function FinishedPage() {
  const searchParams = useSearchParams();
  const router = useRouter();
  const pathname = usePathname();
  const param_chat_id = searchParams.get("chat_id");

  const { trigger: chatroomSupportListTrigger } = useChatroomSupportList();
  const { trigger: chatroomTrigger } = useChatroom();
  const [chatroomList, setChatroomList] = useState<ChatRoomType[]>([]);
  const [selectedChatId, setSelectedChatId] = useState<number | null>(null);
  const [selectedChatroom, setSelectedChatroom] = useState<ChatRoomType>();
  const [refresh, setRefresh] = useState(false);

  useEffect(() => {
    chatroomSupportListTrigger({
      body: {
        state_cds: "CRSTT050", //종료
      },
    }).then((data) => {
      console.log("MyRequestPage - chatroomList: " + JSON.stringify(data));
      setChatroomList(data);
    });
  }, []);

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
      availableStateCdList={["CRSTT050"]}
      isSupport={true}
      searchKey="FinishedPage"
      showToggle={false}
    />
  );
}
