import { ChatList } from "@/components/molecules/chat/chat-list";
import { LlmChatPanel } from "@/components/molecules/chat/llm-chat-pannel";
import { NewChatBotButton } from "@/components/molecules/chat/new-chatbot-button";
import { ChatListSearch } from "@/components/molecules/chat/search-chat-list";
import { UserChatPanel } from "@/components/molecules/chat/user-chat-pannel";
import {
  ResizableHandle,
  ResizablePanel,
  ResizablePanelGroup,
} from "@/components/ui/resizable";
import { Label } from "@radix-ui/react-menubar";
import GuideTour from "../molecules/cmm/guide-tour";
import { guideTourStore } from "@/store/guide-tour-store";
import { Placement } from "react-joyride";
import { useClientSession } from "@/lib/hooks/client/use-client-session";

// TODO 코드 투어 - [봇과채팅](프론트) 130. 채팅 페이지 컴포넌트
/**
 * 채팅방 레이아웃 컴포넌트
 * - 채팅방 목록과 채팅 패널을 분할하여 표시
 * - 사용자 가이드 투어 제공
 * - 채팅방 검색 및 필터링 기능
 */
export const Chatroom: React.FC<ChatRoomLayoutType> = ({
  chatroomList,
  setChatroomList,
  selectedChatId,
  selectedChatroom,
  setSelectedChatId,
  availableStateCdList,
  refresh,
  setRefresh,
  searchKey,
  isSupport,
  showToggle,
}) => {
  // 사용자 세션 및 가이드 투어 설정
  const user = useClientSession();

  // 가이드 투어 단계 정의
  const steps = [
    {
      target: "#new-chatbot-button",
      content: "저와 대화를 시작하고 싶다면 이 버튼을 눌러주세요! 👋",
      disableBeacon: true,
      placement: "left" as Placement,
    },
    {
      target: "#chat-list-search",
      content: "채팅방은 여기서 검색하고 필터링 할 수 있어요~🔦",
      disableBeacon: true,
      placement: "right" as Placement,
    },
    {
      target: "#chat-list",
      content: "여기는 채팅 목록이에요~ 대화 내용을 기반으로 제목과 내용정보를 자동으로 업데이트 해놓을테니 편하게 찾아보세요~📜",
      disableBeacon: true,
      placement: "left" as Placement,
    },
  ];

  // 채팅 패널 렌더링 함수
  const renderChatPanel = () => {
    if (!selectedChatroom) {
      return (
        <div className="w-full h-full flex flex-col items-center justify-center bg-nice-gray-e3e">
          <Label>채팅방이 선택되지 않았습니다.</Label>
        </div>
      );
    }

    if (selectedChatroom?.with_bot_yn) {
      return (
        // **봇과 채팅 패널
        <div className="rounded-xl h-[95vh] bg-nice-gray-e3e">
          {selectedChatId && (
            <LlmChatPanel
              chatId={selectedChatId}
              setChatId={setSelectedChatId}
              refresh={refresh}
              setRefresh={setRefresh}
              chatroomList={chatroomList}
            />
          )}
        </div>
      );
    }

    return (
      // **사용자 간 채팅 패널
      <div className="rounded-xl h-[95vh] bg-nice-gray-e3e">
        {selectedChatId && (
          <UserChatPanel
            chatId={selectedChatId}
            setChatId={setSelectedChatId}
            refresh={refresh}
            setRefresh={setRefresh}
            chatroomList={chatroomList}
          />
        )}
      </div>
    );
  };

  return (
    <div>
      {/* 사용자 가이드 투어 */}
      {user && (
        <GuideTour
          location="chatList"
          userInfo={user ?? {}}
          run={true}
          steps={steps}
        />
      )}

      {/* 채팅방 레이아웃 */}
      <ResizablePanelGroup direction="horizontal" className="w-full">



        {/* 왼쪽 패널: 채팅방 목록 */}
        <ResizablePanel defaultSize={30} minSize={0}>
          <div className="flex flex-col bg-white rounded-xl h-[95vh] overflow-hidden">
            {/* 헤더 영역 */}
            <div className="flex justify-between items-center px-6 border border-b-nice-gray-e3e">
              <h2 className="text-lg font-semibold h-20 flex items-center">
                채팅목록
              </h2>
              {/* 새로운 채팅 시작 버튼 */}
              {!isSupport && (
                <div id="new-chatbot-button">
                  <NewChatBotButton
                    chatroomList={chatroomList}
                    setChatroomList={setChatroomList}
                    setSelectedChatId={setSelectedChatId}
                  >
                    봇과 새로운 대화
                  </NewChatBotButton>
                </div>
              )}
            </div>

            {/* 채팅방 검색 및 목록 */}
            <div className="flex flex-col justify-center">
              <div id="chat-list-search">
                <ChatListSearch
                  searchKey={searchKey}
                  chatId={selectedChatId}
                  setChatroomList={setChatroomList}
                  availableStateCdList={availableStateCdList}
                  refresh={refresh}
                  showToggle={showToggle}
                />
              </div>
              <div id="chat-list">
                <ChatList
                  chatroomList={chatroomList}
                  chatId={selectedChatId}
                  setChatId={setSelectedChatId}
                  refresh={refresh}
                />
              </div>
            </div>
          </div>
        </ResizablePanel>

        {/* 구분선 */}
        <ResizableHandle withHandle className="mx-6 bg-nice-gray-737/50 my-4" />

        {/* 오른쪽 패널: 채팅 내용 */}
        <ResizablePanel defaultSize={70}>
          {renderChatPanel()}
        </ResizablePanel>
      </ResizablePanelGroup>
    </div>
  );
};
