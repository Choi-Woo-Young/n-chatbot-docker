"use client";
import {
  useChatroom,
  useChatroomList,
} from "@/lib/hooks/client/use-chatroom-fetcher";
import { useEffect, useState } from "react";
import { Chatroom } from "@/components/layouts/chatroom";
import { useSearchParams, useRouter, usePathname } from "next/navigation";

export default function MyFinishedPage() {
  const searchParams = useSearchParams();
  const router = useRouter();
  const pathname = usePathname();
  const param_chat_id = searchParams.get("chat_id");

  const { trigger: chatroomTrigger } = useChatroom();
  const { trigger: chatroomListTrigger, isMutating: isChatroomListMutating } = useChatroomList();
  const [chatroomList, setChatroomList] = useState<ChatRoomType[]>([]);
  const [selectedChatId, setSelectedChatId] = useState<number | null>(null);
  const [selectedChatroom, setSelectedChatroom] = useState<ChatRoomType>();
  const [refresh, setRefresh] = useState(false);

  useEffect(() => {
    chatroomListTrigger({
      body: {
        state_cds: "CRSTT050", //종료
      },
    }).then((data) => {
      setChatroomList(data);
    });
  }, []);

  useEffect(() => {
    if (param_chat_id) {
      setSelectedChatId(Number(param_chat_id));
    }
  }, [chatroomList]);

  useEffect(() => {
    console.log("request page selectedChatId >> ", selectedChatId);
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
      searchKey="MyFinishedPage"
      isSupport={true}
      showToggle={false}
    />
  );
}
