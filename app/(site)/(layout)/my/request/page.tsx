"use client";

import { useChatroom } from "@/lib/hooks/client/use-chatroom-fetcher";
import { useEffect, useState } from "react";
import { Chatroom } from "@/components/layouts/chatroom";
import { useSearchParams, useRouter, usePathname } from "next/navigation";

// TODO 코드 투어 - [봇과채팅](프론트) 120. 채팅 페이지 컴포넌트
/**
 * 채팅방 페이지 컴포넌트
 * - 채팅방 목록 표시
 * - 선택된 채팅방 상세 정보 표시
 * - URL 파라미터 기반 채팅방 선택
 */
export default function MyRequestPage() {
  // 라우팅 관련 훅
  const searchParams = useSearchParams(); //URL 파라미터 조회
  const router = useRouter(); //라우터 이동
  const pathname = usePathname(); //현재 경로 조회

  // 상태 관리
  const [paramChatId, setParamChatId] = useState<number | null>(Number(searchParams.get("chat_id")));
  const [chatroomList, setChatroomList] = useState<ChatRoomType[]>([]); //채팅방 목록
  const [selectedChatId, setSelectedChatId] = useState<number | null>(null); //선택된 채팅방 ID
  const [selectedChatroom, setSelectedChatroom] = useState<ChatRoomType>(); //선택된 채팅방 정보
  const [refresh, setRefresh] = useState(false); //새로고침 상태

  // 상수 정의
  // CRSTT010: 대기, CRSTT030: 진행중, CRSTT040: 완료
  const availableStateCdList = ["CRSTT010", "CRSTT030", "CRSTT040"];
  const { trigger: chatroomTrigger } = useChatroom(); //채팅방 조회 트리거


  // TODO 코드 투어 - [봇과채팅](프론트) 140. 채팅방 선택 시 처리
  /**
   * 채팅방 선택 시 처리
   * - URL 파라미터 업데이트
   * - 선택된 채팅방 정보 조회
   */
  useEffect(() => {
    // URL 파라미터 업데이트
    setParamChatId(selectedChatId);

    // 선택된 채팅방 정보 조회
    if (selectedChatId && selectedChatId !== 0) {
      // 채팅방 상세 정보 조회
      chatroomTrigger({ body: { chatId: selectedChatId } }).then((data) => {
        setSelectedChatroom(data);
      });

      // URL 업데이트
      router.replace(`${pathname}?chat_id=${selectedChatId}`);
    }
  }, [selectedChatId, chatroomTrigger, router, pathname]);

  return (
    <div>
      <Chatroom
        // 채팅방 목록 관련 props
        chatroomList={chatroomList}
        setChatroomList={setChatroomList}
        
        // 선택된 채팅방 관련 props
        selectedChatroom={selectedChatroom ?? {}}
        setSelectedChatroom={setSelectedChatroom}
        selectedChatId={selectedChatId}
        setSelectedChatId={setSelectedChatId}
        
        // 상태 관리 props
        refresh={refresh}
        setRefresh={setRefresh}
        
        // 설정 관련 props
        availableStateCdList={availableStateCdList}
        searchKey="MyRequestPage"
        showToggle={true}
      />
    </div>
  );
}
