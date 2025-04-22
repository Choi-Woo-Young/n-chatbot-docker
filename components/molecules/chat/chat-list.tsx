import { Separator } from "@/components/ui/separator";
import { cn, makeLatestMessageTime } from "@/lib/utils";

/**
 * 채팅방 목록 컴포넌트 Props
 */
interface ChatListProps {
  chatroomList: ChatRoomType[] | null;  // 채팅방 목록
  chatId: number | null;                // 현재 선택된 채팅방 ID
  setChatId: (chatId: number | null) => void;  // 채팅방 선택 핸들러
  refresh?: boolean;                    // 새로고침 상태
}

/**
 * 채팅방 목록 컴포넌트
 * - 채팅방 목록 표시
 * - 채팅방 선택 기능
 * - 읽지 않은 메시지 표시
 * - 채팅방 상태 표시
 */
export function ChatList({
  chatroomList,
  chatId,
  setChatId,
  refresh,
}: Readonly<ChatListProps>) {
  // 유효한 채팅방 목록 설정
  const validChatroomList = Array.isArray(chatroomList) ? chatroomList : [];

  return (
    <div className="flex-1">
      <div className="flex flex-col gap-2 p-4 pt-0 overflow-y-scroll h-screen pb-96 scrollbar-hide">
        {/* 채팅방 목록 렌더링 */}
        {validChatroomList?.map((chatroom, index) => (
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
              {/* 채팅방 헤더 */}
              <div className="flex w-full flex-col gap-1">
                <div className="flex items-center">
                  <div className="flex items-center gap-2">
                    {/* 읽지 않은 메시지 표시 */}
                    {chatroom.unread_count != undefined &&
                      chatroom.unread_count > 0 && (
                        <div className="w-1.5 h-1.5 rounded-full bg-red-500" />
                      )}
                    <div className="font-semibold">{chatroom.chat_title}</div>
                    {/* 개인 채팅방 표시 */}
                    {!chatroom.chat_group_id && (
                      <span className="flex h-2 w-2 rounded-full bg-blue-600" />
                    )}
                  </div>
                </div>

                {/* 채팅방 내용 */}
                <div className="text-sm text-nice-666 line-clamp-3">
                  {chatroom.chat_content}
                </div>

                {/* 해시태그 표시 */}
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

              {/* 채팅방 푸터 */}
              <div className="flex items-center justify-between w-full mt-4 text-xs">
                {/* 채팅방 상태 표시 */}
                <div className="text-nice-text">
                  <ChattingLabel
                    stateCd={chatroom.state_cd}
                    userNm={chatroom.user_nm}
                  />
                </div>

                {/* 최신 메시지 시간 표시 */}
                <div className="flex flex-row">
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

        {/* 채팅방이 없는 경우 표시 */}
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

/**
 * 채팅방 상태 레이블 컴포넌트
 */
const ChattingLabel = ({
  stateCd,
  userNm,
}: {
  stateCd?: string;
  userNm?: string;
}) => {
  /**
   * 채팅방 상태에 따른 내용 반환
   */
  const getContent = () => {
    switch (stateCd) {
      case "CRSTT010":  // 봇과 대화중
        return (
          <>
            <div className="w-2 h-2 rounded-full bg-nice-blue-100"></div>
            <span>봇과 대화중</span>
          </>
        );
      case "CRSTT020":  // 이관종료
        return (
          <>
            <div className="w-2 h-2 rounded-full bg-stone-600"></div>
            <span>이관종료</span>
          </>
        );
      case "CRSTT030":  // 지원대기
        return (
          <>
            <div className="w-2 h-2 rounded-full bg-orange-500"></div>
            <span>지원대기</span>
          </>
        );
      case "CRSTT040":  // 지원중
        return (
          <>
            <div className="w-2 h-2 rounded-full bg-green-400"></div>
            <span>지원중{userNm && `(${userNm})`}</span>
          </>
        );
      default:  // 종료
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
