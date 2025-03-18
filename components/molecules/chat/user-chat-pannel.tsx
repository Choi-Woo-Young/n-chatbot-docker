//"use client";

import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/components/ui/accordion";
import { Button } from "@/components/ui/button";
import { FooterText } from "@/components/ui/footer";
import { Label } from "@/components/ui/label";
import { Textarea } from "@/components/ui/textarea";
import {
  useChatroom,
  useChatroomMessageList,
  usePreviousChatroom,
  useReadChatMessage,
} from "@/lib/hooks/client/use-chatroom-fetcher";
import { useChattingSupport } from "@/lib/hooks/client/use-chatting-fetcher";
import { useClientSession } from "@/lib/hooks/client/use-client-session";
import { CalendarDays, Send } from "lucide-react";
import { useRouter } from "next/navigation";
import React, {
  ChangeEvent,
  KeyboardEvent,
  useEffect,
  useRef,
  useState,
} from "react";
import { toast } from "sonner";
import { ChatMsg } from "./chat-msg";
import { ChattingCloseButton } from "./chatting-close-button";
import TransferManager from "./transfer-manager";

export interface ChatPanelProps {
  chatId: number;
  setChatId: (chatId: number | null) => void;
  refresh: boolean;
  setRefresh: (refresh: boolean) => void;
  chatroomList: ChatRoomType[];
}

export function UserChatPanel({
  chatId,
  setChatId,
  refresh,
  setRefresh,
  chatroomList,
}: ChatPanelProps) {
  const router = useRouter();
  const user = useClientSession();
  const scrollAreaRef = useRef<HTMLDivElement>(null);
  const [chatroom, setChatroom] = useState<ChatRoomType>();
  const [previousChatroom, setPreviousChatroom] = useState<ChatRoomType>();
  const [chatMessages, setChatMessages] = useState<ChatMsgType[]>([]);
  const {
    trigger: chatroomMessageListTrigger,
    isMutating: isChatroomMessageListMutating,
  } = useChatroomMessageList();
  const { trigger: chattingSupportTrigger } = useChattingSupport();
  const { trigger: chatroomTrigger } = useChatroom();
  const { trigger: previousChatroomTrigger } = usePreviousChatroom();
  const { trigger: readChatMessageTrigger } = useReadChatMessage();
  const [msgValue, setMsgValue] = useState("");
  const [ws, setWS] = useState<null | WebSocket>(null);
  const [isComposing, setIsComposing] = useState(false);
  const [newMessageNotification, setNewMessageNotification] = useState(false);
  const [isAuth, setIsAuth] = useState(false);
  const isManager =
    user?.role_cd === "ADM" ||
    user?.role_cd === "MGR" ||
    user?.role_cd === "HELP";

  useEffect(() => {
    if (!user || !user?.user_id) {
      router.push("/sign-in");
    }
  }, [user, router]);

  useEffect(() => {
    if (scrollAreaRef.current) {
      scrollAreaRef.current.scrollTop = scrollAreaRef.current.scrollHeight;
    }
  }, [chatMessages]);

  useEffect(() => {
    if (ws) {
      ws.onmessage = (event) => {
        const receivedMessage: ChatMsgType = JSON.parse(event.data);

        if (receivedMessage.msg_type === "SYSTEM") {
          if (receivedMessage.user_id != user?.user_id) {
            if (receivedMessage.msg_code === "READ") {
              setChatMessages((prevMessages) =>
                prevMessages.map((message) =>
                  message.chat_msg_id === receivedMessage.chat_msg_id
                    ? { ...message, unread_count: 0 }
                    : message
                )
              );
            } else if (receivedMessage.msg_code === "ENTER") {
              chatroomMessageListTrigger({ body: { chatId: chatId } }).then(
                (data) => {
                  setChatMessages(data);
                }
              );
            }
          }
          return;
        }

        setChatMessages((prevMessages) => {
          const isDuplicate = prevMessages.some(
            (message) => message.chat_msg_id === receivedMessage.chat_msg_id
          );

          if (isDuplicate) {
            return prevMessages;
          }

          return [...prevMessages, receivedMessage];
        });

        // const scrollArea = scrollAreaRef.current;
        // if (scrollArea) {
        //   // 스크롤이 맨 아래에 있는지 확인
        //   const isScrolledToBottom =
        //     scrollArea.scrollHeight - scrollArea.scrollTop ===
        //     scrollArea.clientHeight;

        //   // 스크롤이 맨 아래에 없으면 알림 표시
        //   if (!isScrolledToBottom) {
        //     setNewMessageNotification(true);
        //   }
        // }

        // receivedMessage의 selected_cd가 "CRSTT050"이면 채팅방 종료

        // 읽음 처리
        if (receivedMessage.user_id != user?.user_id) {
          readChatMessageTrigger({
            body: {
              chat_id: chatId,
              user_id: user?.user_id,
              chat_msg_id: receivedMessage.chat_msg_id,
            },
          }).then(() => {
            // 시스템 메시지 전송 (읽음)
            const systemMessage: ChatMsgType = {
              msg_type: "SYSTEM",
              msg_code: "READ",
              chat_id: chatId,
              user_id: user?.user_id!,
              chat_msg_id: receivedMessage.chat_msg_id,
            };

            ws.send(JSON.stringify(systemMessage));
          });
        }

        if (ws && receivedMessage.selected_cd === "CRSTT050") {
          ws.close();
          if (receivedMessage.chat_id) {
            setChatId(receivedMessage.chat_id);
            setRefresh(!refresh);
          }
        }
      };
    }
    return () => {
      if (ws) {
        ws.close();
        console.log("WebSocket connection closed");
      }
    };
  }, [ws]);

  const handleCompositionStart = () => {
    setIsComposing(true);
  };

  const handleCompositionEnd = () => {
    setIsComposing(false);
  };

  // const handleScrollToBottom = () => {
  //   const scrollArea = scrollAreaRef.current;
  //   if (scrollArea) {
  //     scrollArea.scrollTop = scrollArea.scrollHeight;
  //   }
  //   setNewMessageNotification(false); // 스크롤을 맨 아래로 이동했으므로 알림 숨김
  // };

  const handleSupport = async () => {
    try {
      // 채팅방 담당자 추가
      const response = await chattingSupportTrigger({
        body: { chatId, userId: user?.user_id },
      });

      if (response.message) {
        toast.error(response.message, {
          position: "top-center",
        });
        setIsAuth(false);
      } else {
        setRefresh(!refresh);
        wsConnection();
      }
      // if (response && response.status === 200) {
      //   setRefresh(!refresh);
      //   wsConnection();
      // } else {
      //   console.log("지원결과 오류? ", response);
      //   toast.error(response.message, {
      //     position: "top-center",
      //   });
      // }
    } catch (error: any) {
      console.error("Error:", error);
      toast.error("지원 요청 중 오류가 발생했습니다.", {
        position: "top-center",
      });
    }
  };

  const wsConnection = (): Promise<WebSocket> => {
    return new Promise((resolve, reject) => {
      if (ws) {
        ws.onmessage = null; // 기존 WebSocket의 onmessage 핸들러 제거
        ws.close();
      }

      const newSocket = new WebSocket(
        `${process.env.NEXT_PUBLIC_WEBSOCKET_URL}/chatting/${chatId}/users/${
          user?.user_id ?? 1
        }`
      );

      newSocket.onopen = () => {
        // 시스템 메시지 전송 (입장)
        const systemMessage: ChatMsgType = {
          msg_type: "SYSTEM",
          msg_code: "ENTER",
          chat_id: chatId,
          user_id: user?.user_id!,
        };

        newSocket.send(JSON.stringify(systemMessage));

        setWS(newSocket);
        resolve(newSocket);
      };

      newSocket.onerror = (error) => {
        console.error("WebSocket error:", error);
        reject(error);
      };

      newSocket.onclose = () => {
        console.log("WebSocket connection closed");
      };
    });
  };

  useEffect(() => {
    // 기존 WebSocket 연결이 있을 경우 종료
    if (ws) {
      ws.onmessage = null;
      ws.close();
      setWS(null);
    }

    setChatMessages([]);
    chatroomMessageListTrigger({ body: { chatId: chatId } }).then((data) => {
      setChatMessages(data);
    });

    if (chatId && chatId != 0) {
      chatroomTrigger({ body: { chatId: chatId } }).then(
        (data: ChatRoomType) => {
          setChatroom(data);
          // console.log("chatroom", data);
          // console.log("user >>> ", user?.user_id, user?.role_cd);
          // if (
          //   data?.user_id == user?.user_id ||
          //   data?.mgr_user_id == user?.user_id ||
          //   user?.role_cd == "ADM" ||
          //   data?.chatroom_user_id_list?.includes(user?.user_id!) ||
          //   (data?.state_cd == "CRSTT030" && user?.role_cd == "HELP")
          // ) {
          //   setIsAuth(true);
          // } else {
          //   setIsAuth(false);
          // }

          //chatroomList에서 data에 해당하는 chatroom을 업데이트
          const chatroomIndex = chatroomList.findIndex(
            (chatroom) => chatroom.chat_id == data.chat_id
          );
          if (chatroomIndex > -1) {
            data.unread_count = 0;
            chatroomList[chatroomIndex] = data;
          }

          if (user?.user_id && chatId && data?.state_cd == "CRSTT040") {
            wsConnection();
          }
        }
      );
      previousChatroomTrigger({ body: { chatId: chatId } }).then(
        (data: ChatRoomType) => {
          setPreviousChatroom(data);
        }
      );
    }
  }, [refresh, chatId]);

  useEffect(() => {
    if (
      chatroom?.user_id == user?.user_id ||
      chatroom?.mgr_user_id == user?.user_id ||
      user?.role_cd == "ADM" ||
      chatroom?.chatroom_user_id_list?.includes(user?.user_id!) ||
      (chatroom?.state_cd == "CRSTT030" && user?.role_cd == "HELP")
    ) {
      setIsAuth(true);
    } else {
      setIsAuth(false);
    }
  }, [user?.user_id, user?.role_cd, chatroom]);

  const handleInputChange = (
    event: ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) => {
    const { id, value } = event.target;
    setMsgValue(value);
  };

  const handleKeyDown = (event: KeyboardEvent<HTMLTextAreaElement>) => {
    if (event.key === "Enter" && !event.shiftKey && !isComposing) {
      event.preventDefault();
      handleSubmit();
    }
  };

  const handleSubmit = async () => {
    console.log("[handleSubmit] msgValue" + msgValue);
    if (msgValue && msgValue.trim() != "") {
      const newMessage: ChatMsgType = {
        msg_type: "USER",
        chat_id: chatId,
        user_id: user?.user_id!,
        user_role_cd: chatroom?.user_id == user?.user_id ? "USR" : "MGR",
        chat_message: msgValue,
        user_nm: user?.user_nm,
        dept_nm: user?.dept_nm,
      };

      try {
        console.log("[handleSubmit] ws" + ws?.readyState);

        if (ws?.readyState !== 1) {
          const newWs = await wsConnection();
          newWs.send(JSON.stringify(newMessage));
        } else {
          ws.send(JSON.stringify(newMessage));
        }

        setTimeout(() => {
          setMsgValue("");
        }, 10);
      } catch (e) {
        console.log("error:" + e);
      }
    }
  };

  let lastChangedDate = "";
  const handleLastChatDate = (date: string) => {
    const chatDate = date.split("T")[0].replaceAll("-", ".");
    if (lastChangedDate === "" || lastChangedDate !== chatDate) {
      lastChangedDate = chatDate;
      return (
        <div className="w-full flex justify-center">
          <div className="flex w-fit justify-center items-center gap-1.5 my-4 text-xs bg-nice-999/10 text-nice-999 rounded-full px-3 py-1">
            <CalendarDays className="w-3 h-3" />
            {lastChangedDate}
          </div>
        </div>
      );
    } else {
      return null;
    }
  };

  return isChatroomMessageListMutating ? (
    <div></div>
  ) : chatId && chatMessages.length <= 0 ? (
    <EmptyChatroom text={"대화 내용이 없습니다."} />
  ) : !chatId ? (
    <EmptyChatroom text={"채팅방이 선택되지 않았습니다."} />
  ) : !user?.user_id ? (
    <EmptyChatroom text={"사용자 정보가 없습니다. 다시 로그인해 주세요."} />
  ) : !isAuth ? (
    <EmptyChatroom text={"해당 채팅방에 대한 권한이 없습니다."} />
  ) : (
    <div className="flex flex-col h-full overflow-scroll scrollbar-hide relative pb-32">
      <div className="flex justify-between items-center px-6 rounded-t-xl border border-b-nice-gray-9ea/50">
        <h2 className="text-lg font-semibold h-20 flex items-center">
          {chatId}번 채팅방에서{" "}
          {/* {chatroom?.with_bot_yn ? "봇과대화중" : "담당자와"} 대화중 -{" "} */}
          {chatroom?.state_cd === "CRSTT010"
            ? "봇과 대화중"
            : chatroom?.state_cd === "CRSTT020"
            ? "이관종료"
            : chatroom?.state_cd === "CRSTT030"
            ? "담당자 지원대기"
            : chatroom?.state_cd === "CRSTT040"
            ? "담당자와 대화중"
            : chatroom?.state_cd === "CRSTT050"
            ? "대화 종료"
            : "상태없음"}
        </h2>
        {isAuth && (
          <div className="flex items-center gap-2">
            {chatroom?.state_cd &&
              chatroom?.state_cd == "CRSTT030" &&
              (chatroom?.mgr_user_id == null ||
                chatroom?.mgr_user_id == user?.user_id) &&
              chatroom?.user_id != user?.user_id &&
              isManager && (
                <Button
                  className="border border-nice-text rounded-full bg-nice-bg text-white hover:bg-nice-bg transform hover:scale-105 hover:text-white transition-transform duration-300"
                  onClick={handleSupport}
                >
                  지원
                </Button>
              )}
            {chatroom?.state_cd &&
              (chatroom?.state_cd == "CRSTT030" ||
                chatroom?.state_cd == "CRSTT040") && (
                <ChattingCloseButton
                  chatId={chatId}
                  setChatId={setChatId}
                  refresh={refresh}
                  setRefresh={setRefresh}
                  chatroomList={chatroomList}
                  ws={ws ?? undefined}
                  isUsr={chatroom?.user_id == user?.user_id}
                >
                  지원종료
                </ChattingCloseButton>
              )}
            {chatroom?.state_cd &&
              ((chatroom?.state_cd == "CRSTT030" &&
                (chatroom?.mgr_user_id == null ||
                  chatroom?.mgr_user_id == user?.user_id)) ||
                chatroom?.state_cd == "CRSTT040") &&
              chatroom?.user_id != user?.user_id &&
              (user?.role_cd == "ADM" ||
                user?.role_cd == "MGR" ||
                user?.role_cd == "HELP") && (
                <TransferManager
                  chatId={chatId}
                  setChatId={setChatId}
                  refresh={refresh}
                  setRefresh={setRefresh}
                />
              )}
          </div>
        )}
      </div>

      {isManager && user?.user_id != chatroom?.user_id && previousChatroom && (
        <div className="bg-nice-gray-9ea/50 px-6 rounded-b-xl bottom-0 w-full text-xs">
          <Accordion type="single" defaultValue="item-1" collapsible>
            <AccordionItem value="item-1">
              <AccordionTrigger>이전 대화 요약</AccordionTrigger>
              <AccordionContent className="flex flex-col text-xs gap-1 rounded-b-xl">
                <div className="font-bold">{previousChatroom.chat_title}</div>
                <div className="text-nice-666">
                  {previousChatroom.chat_content}
                </div>
                <div className="text-[#212020]">
                  {"#" + previousChatroom.hashtag?.split("/").join(" #")}
                </div>
              </AccordionContent>
            </AccordionItem>
          </Accordion>
        </div>
      )}

      <div className="overflow-auto px-6" ref={scrollAreaRef}>
        {/* <ScrollArea> */}
        {chatId && (
          <div className="flex flex-col gap-2 pt-0">
            {chatMessages && chatMessages.length > 0
              ? chatMessages.map((msg, index) => (
                  <React.Fragment key={msg.chat_msg_id ?? index}>
                    {handleLastChatDate(
                      msg.last_modified_time ??
                        new Date().toISOString().slice(0, 16).replace("T", "T")
                    )}
                    <ChatMsg
                      key={msg.chat_msg_id ?? index}
                      msg={msg}
                      chatroom_state_cd={chatroom?.state_cd}
                    />
                  </React.Fragment>
                ))
              : null}
          </div>
        )}
        {/* </ScrollArea> */}
      </div>

      <div className="bg-nice-gray-e3e px-6 h-28 rounded-b-xl absolute bottom-0 w-full">
        {/* {chatroom?.state_cd &&
              chatroom?.state_cd == "CRSTT030" &&
              user.role_cd == "MGR" && (
                <Button
                  className="bg-purple-300 text-black hover:bg-purple-500 transform hover:scale-110 transition-transform duration-300"
                  onClick={handleSupport}
                >
                  지원
                </Button>
              )}
            {chatroom?.state_cd && chatroom?.state_cd == "CRSTT040" && (
              <ChattingCloseButton
                chatId={chatId}
                setChatId={setChatId}
                refresh={refresh}
                setRefresh={setRefresh}
              >
                지원종료
              </ChattingCloseButton>
            )}
            {chatroom?.state_cd && (chatroom?.state_cd == "CRSTT030" || chatroom?.state_cd == "CRSTT040") && 
              user.role_cd == "MGR" && (
                <TransferManager chatId={chatId} />
              )} */}
        {chatroom?.state_cd && chatroom?.state_cd == "CRSTT040" && (
          <div>
            <div className="flex w-full items-center bg-background rounded-xl border shadow-sm">
              {/* {newMessageNotification && (
                    <div className="absolute bottom-32 left-0 right-0 flex justify-center">
                      <div
                        className="bg-blue-500 text-white px-4 py-2 rounded-full"
                        onClick={handleScrollToBottom}
                      >
                        새로운 메시지가 도착했습니다
                      </div>
                    </div>
                  )} */}
              <Textarea
                tabIndex={0}
                placeholder="메시지를 입력하세요"
                className="w-full resize-none bg-transparent p-4 border-none flex items-center"
                autoFocus
                spellCheck={false}
                autoComplete="off"
                autoCorrect="off"
                name="message"
                rows={1}
                value={msgValue}
                onChange={handleInputChange}
                onKeyDown={handleKeyDown}
                onCompositionStart={handleCompositionStart}
                onCompositionEnd={handleCompositionEnd}
              />
              <div className="px-4">
                <button
                  className="bg-nice-blue-500 rounded-full flex items-center justify-center pt-3.5 pr-3.5 pb-3 pl-3 shadow-md disabled:opacity-50"
                  onClick={handleSubmit}
                >
                  <Send className="text-white" />
                </button>
              </div>
            </div>
            <FooterText className="hidden sm:block" />
          </div>
        )}
      </div>
    </div>
  );
}

const EmptyChatroom = ({ text }: { text: string }) => {
  return (
    <div className="w-full h-full flex flex-col items-center justify-center bg-nice-gray-e3e border-none rounded-xl">
      <Label>{text}</Label>
    </div>
  );
};
