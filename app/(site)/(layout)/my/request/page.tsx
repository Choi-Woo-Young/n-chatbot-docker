"use client";

import { useChatroom } from "@/lib/hooks/client/use-chatroom-fetcher";
import { useEffect, useState } from "react";
import { Chatroom } from "@/components/layouts/chatroom";
import { useSearchParams, useRouter, usePathname } from "next/navigation";
import { Placement } from "react-joyride";
import GuideTour from "@/components/molecules/cmm/guide-tour";

export default function MyRequestPage() {
  const searchParams = useSearchParams();
  const router = useRouter();
  const pathname = usePathname();
  const [paramChatId, setParamChatId] = useState<number | null>(
    Number(searchParams.get("chat_id"))
  );
  const availableStateCdList = ["CRSTT010", "CRSTT030", "CRSTT040"];
  const { trigger: chatroomTrigger } = useChatroom();
  const [chatroomList, setChatroomList] = useState<ChatRoomType[]>([]);
  const [selectedChatId, setSelectedChatId] = useState<number | null>(null);
  const [selectedChatroom, setSelectedChatroom] = useState<ChatRoomType>();
  const [refresh, setRefresh] = useState(false);

  
  useEffect(() => {
    setParamChatId(selectedChatId);
    selectedChatId != 0 &&
      selectedChatId != null &&
      chatroomTrigger({ body: { chatId: selectedChatId } }).then((data) => {
        setSelectedChatroom(data);
      });

    selectedChatId &&
      selectedChatId != 0 &&
      router.replace(`${pathname}?chat_id=${selectedChatId}`);
  }, [selectedChatId, chatroomTrigger, router, pathname]);

  return (
    <div>
      
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
        searchKey="MyRequestPage"
        showToggle={true}
      />
    </div>
  );
}
