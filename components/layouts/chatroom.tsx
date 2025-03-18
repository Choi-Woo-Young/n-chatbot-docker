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
  const user = useClientSession();
  const { getGuideTourSteps } = guideTourStore();
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
      content:
        "여기는 채팅 목록이에요~ 대화 내용을 기반으로 제목과 내용정보를 자동으로 업데이트 해놓을테니 편하게 찾아보세요~📜",
      disableBeacon: true,
      placement: "left" as Placement,
    },
  ];

  return (
    <div>
      {user && (
        <GuideTour
          location="chatList"
          userInfo={user ?? {}}
          run={true}
          steps={steps}
        />
      )}

      <ResizablePanelGroup direction="horizontal" className="w-full">
        <ResizablePanel defaultSize={30} minSize={0}>
          <div className="flex flex-col bg-white rounded-xl h-[95vh] overflow-hidden">
            <div className="flex justify-between items-center px-6 border border-b-nice-gray-e3e">
              <h2 className="text-lg font-semibold h-20 flex items-center">
                채팅목록
              </h2>
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
                ></ChatList>
              </div>
            </div>
          </div>
        </ResizablePanel>

        <ResizableHandle withHandle className="mx-6 bg-nice-gray-737/50 my-4" />
        <ResizablePanel defaultSize={70}>
          {!selectedChatroom ? (
            <div className="w-full h-full flex flex-col items-center justify-center bg-nice-gray-e3e">
              {/* <Image
                src="/pig.png"
                width={500}
                height={500}
                alt="Picture of the author"
            /> */}
              <Label>채팅방이 선택되지 않았습니다.</Label>
            </div>
          ) : selectedChatroom?.with_bot_yn ? (
            <div className="rounded-xl h-[95vh] bg-nice-gray-e3e">
              {/* <Label>{selectedChatroom?.with_bot_yn}</Label> */}
              {selectedChatId && (
                <LlmChatPanel
                  chatId={selectedChatId!}
                  setChatId={setSelectedChatId}
                  refresh={refresh}
                  setRefresh={setRefresh}
                  chatroomList={chatroomList}
                ></LlmChatPanel>
              )}
            </div>
          ) : (
            <div className="rounded-xl h-[95vh] bg-nice-gray-e3e">
              {selectedChatId && (
                <UserChatPanel
                  chatId={selectedChatId!}
                  setChatId={setSelectedChatId}
                  refresh={refresh}
                  setRefresh={setRefresh}
                  chatroomList={chatroomList}
                ></UserChatPanel>
              )}
            </div>
          )}
        </ResizablePanel>
      </ResizablePanelGroup>
    </div>
  );
};
