import { Separator } from "@/components/ui/separator";
import { cn, makeLatestMessageTime } from "@/lib/utils";

interface ChatListProps {
  chatroomList: ChatRoomType[] | null ;
  chatId: number | null;
  setChatId: (chatId: number | null) => void;
  refresh?: boolean;
}

export function ChatList({
  chatroomList,
  chatId,
  setChatId,
  refresh,
}: ChatListProps) {
  const validChatroomList = Array.isArray(chatroomList) ? chatroomList : [];
  return (
    <div className="flex-1">
      <div className="flex flex-col gap-2 p-4 pt-0 overflow-y-scroll h-screen pb-96 scrollbar-hide">
        {validChatroomList &&
          validChatroomList?.map((chatroom, index) => (
            <div key={`chatroom-${index}`} className="flex flex-col">
              <button
                key={chatroom.chat_id}
                className={cn(
                  "border-none flex flex-col items-start justify-between gap-2 text-start rounded-lg p-4 hover:bg-nice-blue-500/30",
                  {
                    "bg-nice-gray-737/30": chatId === chatroom.chat_id,
                    "bg-blue-50/70": chatId !== chatroom.chat_id,
                  }
                )}
                onClick={() => setChatId(chatroom.chat_id!)}
              >
                <div className="flex w-full flex-col gap-1">
                  <div className="flex items-center">
                    <div className="flex items-center gap-2">
                      {chatroom.unread_count != undefined &&
                        chatroom.unread_count > 0 && (
                          <div className="w-1.5 h-1.5 rounded-full bg-red-500" />
                        )}
                      <div className="font-semibold">{chatroom.chat_title}</div>
                      {!chatroom.chat_group_id && (
                        <span className="flex h-2 w-2 rounded-full bg-blue-600" />
                      )}
                    </div>
                    <div
                      className={cn(
                        "ml-auto text-xs",
                        true ? "text-foreground" : "text-muted-foreground"
                      )}
                    ></div>
                  </div>
                  <div className="text-sm text-nice-666 line-clamp-3">
                    {chatroom.chat_content}
                    {/* / {chatroom.chat_group_id} -{chatroom.chat_id} */}
                  </div>
                  {chatroom.hashtag && (
                    <div className="mt-2 text-[#999] text-xs">
                      {chatroom.hashtag?.split("/").map((tag, index) => (
                        <span key={index} className="mr-1">
                          #{tag}
                        </span>
                      ))}
                    </div>
                  )}
                </div>
                <div className="flex items-center justify-between w-full mt-4 text-xs ">
                  <div className="text-nice-text">
                    <ChattingLabel
                      stateCd={chatroom.state_cd}
                      userNm={chatroom.user_nm}
                    />
                  </div>
                  <div className="flex flex-row">
                    {/* {chatroom.unread_count != undefined &&
                        chatroom.unread_count > 0 && (
                          <div
                            className={cn(
                              "mr-2 bg-red-500 text-white text-[0.6rem] font-semibold rounded-full",
                              chatroom.unread_count == 1 ? "px-1.5" : "px-1"
                            )}
                          >
                            {chatroom.unread_count}
                          </div>
                        )} */}
                    <div className="text-nice-666">
                      {chatroom.latest_message_time != undefined &&
                        makeLatestMessageTime(chatroom.latest_message_time)}
                    </div>
                  </div>
                </div>
              </button>
              <Separator className="mt-2" />
            </div>
          ))}
        {!validChatroomList ||
          (validChatroomList.length === 0 && (
            <div className="flex justify-center items-center h-32 text-nice-666">
              대화중인 채팅방이 없습니다.
            </div>
          ))}
      </div>
    </div>
  );
}

const ChattingLabel = ({
  stateCd,
  userNm,
}: {
  stateCd?: string;
  userNm?: string;
}) => {
  const getContent = () => {
    switch (stateCd) {
      case "CRSTT010":
        return (
          <>
            <div className="w-2 h-2 rounded-full bg-nice-blue-100"></div>
            <span>봇과 대화중</span>
          </>
        );
      case "CRSTT020":
        return (
          <>
            <div className="w-2 h-2 rounded-full bg-stone-600"></div>
            <span>이관종료</span>
          </>
        );
      case "CRSTT030":
        return (
          <>
            <div className="w-2 h-2 rounded-full bg-orange-500"></div>
            <span>지원대기</span>
          </>
        );
      case "CRSTT040":
        return (
          <>
            <div className="w-2 h-2 rounded-full bg-green-400"></div>
            <span>지원중{userNm && `(${userNm})`}</span>
          </>
        );
      default:
        return (
          <>
            <div className="w-2 h-2 rounded-full bg-nice-text"></div>
            <span>종료</span>
          </>
        );
    }
  };

  return (
    <div className="bg-nice-gray-f5f shadow-sm rounded-full px-3 py-1.5 flex items-center gap-1.5">
      {getContent()}
    </div>
  );
};
