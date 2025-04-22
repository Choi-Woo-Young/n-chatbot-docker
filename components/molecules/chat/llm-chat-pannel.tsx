"use client";

import { ButtonProps } from "@/components/ui/button";
import { FooterText } from "@/components/ui/footer";
import { Label } from "@/components/ui/label";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Textarea } from "@/components/ui/textarea";
import {
  useChatMessageRegister,
  useChatroom,
  useChatroomMessageList,
} from "@/lib/hooks/client/use-chatroom-fetcher";
import { useClientSession } from "@/lib/hooks/client/use-client-session";
import { useEmbeddingFileList } from "@/lib/hooks/client/use-embedding-file-fetcher";
import { useSelfServiceStore } from "@/store/self-service-store";
import clsx from "clsx";
import { CalendarDays, Send, XIcon } from "lucide-react";
import { useRouter } from "next/navigation";
import React, {
  ChangeEvent,
  KeyboardEvent,
  forwardRef,
  useCallback,
  useEffect,
  useRef,
  useState,
} from "react";
import { Placement } from "react-joyride";
import GuideTour from "../cmm/guide-tour";
import { ChatMsg } from "./chat-msg";
import { ChattingCloseButton } from "./chatting-close-button";
import { ChattingRequestButton } from "./chatting-request-button";

// TODO 코드 투어 - [봇과채팅](프론트) 150. 봇 채팅 패널 컴포넌트
/**
 * 채팅 패널 컴포넌트 Props 인터페이스
 * @property {number} chatId - 현재 채팅방 ID
 * @property {(chatId: number | null) => void} setChatId - 채팅방 ID 설정 함수
 * @property {boolean} refresh - 새로고침 상태
 * @property {(refresh: boolean) => void} setRefresh - 새로고침 상태 설정 함수
 * @property {ChatRoomType[]} chatroomList - 채팅방 목록
 */
export interface ChatPanelProps {
  chatId: number;
  setChatId: (chatId: number | null) => void;
  refresh: boolean;
  setRefresh: (refresh: boolean) => void;
  chatroomList: ChatRoomType[];
}

/**
 * LLM 채팅 패널 컴포넌트
 * - 채팅 메시지 표시 및 입력
 * - 셀프서비스 기능 제공
 * - 채팅방 상태 관리
 * - 가이드 투어 제공
 */
export function LlmChatPanel({
  chatId,
  setChatId,
  refresh,
  setRefresh,
  chatroomList,
}: Readonly<ChatPanelProps>) {
  // 가이드 투어 단계 정의
  const steps = [
    {
      target: "#chat-input",
      content:
        "저와 대화할 수 있는 채팅 입력창이에요! \n #을 누르면 직접 처리 가능한 셀프서비스 목록도 나오니 한 번 입력해보세요!✏️",
      disableBeacon: true,
      placement: "left" as Placement,
    },
    {
      target: "#select_service",
      content:
        "제가 최대한 질문의 의도를 파악하려고 하지만, 가끔은 놓칠 때도 있거든요. 그럴 때는 여기서 원하시는 서비스를 직접 선택하고 질문 주시면 더 명확한 답변을 드릴수 있어요! 그리고 질문에 서비스명을 정확히 포함시키는 것도 도움이 돼요✨",
      disableBeacon: true,
      placement: "top" as Placement,
    },
    {
      target: "#chatting-request-btn",
      content:
        "제가 답변을 드리지 못하는 경우에는 여기 버튼을 눌러 담당자에게 지원 요청을 할 수 있어요! 담당자가 확인 후 지원 가능한 상태가 되면 메신저로 알림이 올 거니 기다려주세요~👨‍💻",
      disableBeacon: true,
      placement: "bottom" as Placement,
    },
    {
      target: "#chatting-close-btn",
      content:
        "문의가 끝났다면 여기 버튼을 눌러 채팅방을 종료해주세요. 저는 종료된 채팅 내용을 학습하여 더 나은 서비스를 제공할 수 있어요!👋",
      disableBeacon: true,
      placement: "bottom" as Placement,
    },
  ];

  // 상태 관리
  const router = useRouter(); // 라우터 이동
  const user = useClientSession(); // 사용자 세션

  const {
    trigger: embeddingFileListTrigger,
    isMutating: isEmbeddingFileListMutating,
  } = useEmbeddingFileList(); // 임베딩 파일 목록 조회
  const [embeddingFileList, setEmbeddingFileList] = useState<
    EmbeddingFileType[]
  >([]); // 임베딩 파일 목록

  const [chatroom, setChatroom] = useState<ChatRoomType>(); // 채팅방 정보
  const { trigger: chatroomTrigger } = useChatroom(); // 채팅방 정보 조회

  const [chatMessages, setChatMessages] = useState<ChatMsgType[]>([]); // 채팅 메시지 목록
  const { trigger: chatroomMessageListTrigger } = useChatroomMessageList(); // 채팅 메시지 목록 조회
  const { trigger: chatMessageRegisterTrigger } = useChatMessageRegister(); // 채팅 메시지 저장

  const [msgValue, setMsgValue] = useState(""); // 채팅 메시지 입력값
  const [botMsg, setBotMsg] = useState(""); // 봇 메시지

  const [isBotTyping, setIsBotTyping] = useState(false); // 봇 입력 중 여부

  const scrollAreaRef = useRef<HTMLDivElement>(null); // 스크롤 영역 참조

  const [isSharpButton, setIsSharpButton] = useState(false); // 셀프서비스 버튼 표시 여부

  const [isAuth, setIsAuth] = useState(false); // 권한 여부

  const [serviceCd, setServiceCd] = useState(""); // 서비스 코드

  // 임베딩 파일 목록 초기화
  useEffect(() => {
    embeddingFileListTrigger().then((data) => {
      // 중복 제거 (accumulator 패턴 사용)
      const uniqueData = data.reduce(
        (acc: EmbeddingFileType[], current: EmbeddingFileType) => {
          const x = acc.find((item) => item.service_cd === current.service_cd);
          if (!x) {
            return acc.concat([current]);
          } else {
            return acc;
          }
        },
        []
      );
      setEmbeddingFileList(uniqueData);
    });
  }, []);

  // 채팅방 정보 조회
  const chatroomData = useCallback(async () => {
    const data =
      chatId != 0 &&
      chatId != null &&
      (await chatroomTrigger({ body: { chatId: chatId } }));
    setChatroom(data);
    setServiceCd(data?.service_cd ?? "");
    setMsgValue("");
  }, [chatId]);

  // 채팅 메시지 목록 조회
  const chatMsgListData = useCallback(async () => {
    if (chatId && chatId != 0 && chatId != null) {
      const data = await chatroomMessageListTrigger({
        body: { chatId: chatId },
      });
      setChatMessages(data);
      isBotTyping && setIsBotTyping(false);
    }
  }, [chatId]);


  // **채팅방 ID 변경 시 데이터 갱신
  useEffect(() => {
    if (chatId && chatId != 0 && chatId != null) {
      chatroomData();
      chatMsgListData();
    }
  }, [chatId]);

  // 사용자 권한 확인
  useEffect(() => {
    const isChatroomOwner = chatroom?.user_id === user?.user_id; // 채팅방 소유자
    const isChatroomManager = chatroom?.mgr_user_id === user?.user_id; // 채팅방 관리자
    const isSystemAdmin = user?.role_cd === "ADM"; // 시스템 관리자
    const isChatroomParticipant = chatroom?.chatroom_user_id_list?.includes(user?.user_id!); // 채팅방 참여자
    const isHelpDeskInWaiting = chatroom?.state_cd === "CRSTT030" && user?.role_cd === "HELP"; // 담당자, 지원대기

    const hasAccess = isChatroomOwner || 
                     isChatroomManager || 
                     isSystemAdmin || 
                     isChatroomParticipant || 
                     isHelpDeskInWaiting;

    setIsAuth(hasAccess);
  }, [user]);



  // 메시지 목록 변경 시 스크롤 위치 조정
  useEffect(() => {
    if (scrollAreaRef.current) {
      scrollAreaRef.current.scrollTop =
        scrollAreaRef.current.scrollHeight + 100;
    }
  }, [chatMessages, isBotTyping, botMsg]);


  // **셀프서비스 액션 처리
  const { action, updateActions } = useSelfServiceStore((state) => state);
  useEffect(() => {
    if (
      action.name !== "" &&
      action.value !== "" &&
      action.previous_query !== ""
    ) {
      if (action.type == "SERVICE_CD") {
        setServiceCd(action.value);
      }
      // 봇 입력 중이 아니면 채팅 전송
      !isBotTyping && sendChat(action);
      // 액션 초기화
      updateActions("", "", "", "");
    }
  }, [action]);


  // 새로고침 시 데이터 갱신
  useEffect(() => {
    setChatMessages([]);
    chatroomMessageListTrigger({ body: { chatId: chatId } }).then((data) => {
      setChatMessages(data);
    });
    chatId != 0 &&  chatroomTrigger({ body: { chatId: chatId } }).then((data) => { setChatroom(data);});
  }, [refresh]);

  // 입력값 변경 처리
  const handleInputChange = (
    event: ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) => {
    const { id, value } = event.target;
    setMsgValue(value);
    if (value.startsWith("#")) {
      setIsSharpButton(true);
    } else {
      setIsSharpButton(false);
    }
  };

  // 엔터 키 입력 처리
  const handleKeyDown = (event: KeyboardEvent<HTMLTextAreaElement>) => {
    if (
      msgValue.trim() !== "" &&
      !isBotTyping &&
      event.key === "Enter" &&
      !event.shiftKey
    ) {
      event.preventDefault();
      event.stopPropagation();
      handleSubmit();
    }
  };

  // 메시지 전송 처리
  const handleSubmit = () => {
    if (msgValue) {
      sendChat(msgValue);
    }
  };

  // 서비스 코드 선택 처리
  const handleSelectServiceCd = (value: string) => {
    setServiceCd(value);
  };

  // 메시지 전송 및 응답 처리
  const sendChat = async (msg: string | SelfServiceButtonType) => {
    let selected_cd = "";
    setIsSharpButton(false);
    const isSelfService = typeof msg !== "string";

    if (isSelfService && msg.type == "SERVICE_CD") {
      setServiceCd(msg.value);
    }

    // 특수 셀프서비스 코드 처리
    if (msg === "내부 그룹웨어 비밀번호 초기화") {
      selected_cd = "NICE_NGROUPWARE_SVC";
    } else if (msg === "외부 그룹웨어 비밀번호 초기화") {
      selected_cd = "NICE_HGROUPWARE_SVC";
    } else if (msg === "내부메일 비밀번호 초기화") {
      selected_cd = "NICE_WEBMAIL_SVC";
    }

    // 새 메시지 생성
    const newMessage: ChatMsgType = {
      chat_id: chatId,
      user_id: user?.user_id!,
      user_role_cd: "USR",
      chat_message: !isSelfService ? msg : msg.name,
      last_modified_time: new Date(new Date().getTime() + 9 * 60 * 60 * 1000)
        .toISOString()
        .slice(0, 16),
      service_cd: serviceCd,
      selected_cd: selected_cd ?? "",
    };
    chatMessages.push(newMessage);
    setChatMessages(chatMessages);
    setTimeout(() => { setMsgValue(""); }, 10); // 입력값 초기화

    // 봇 응답 처리
    setIsBotTyping(true);

    let botMessageContent = "";

    // API 요청 데이터 준비
    const bodyParam = !isSelfService
      ? newMessage
      : {
          chat_id: chatId,
          user_id: user?.user_id!,
          user_role_cd: "USR",
          chat_message: msg.name,
          selected_cd: msg.value,
          previous_query: msg.previous_query,
          last_modified_time: new Date(
            new Date().getTime() + 9 * 60 * 60 * 1000
          )
            .toISOString()
            .slice(0, 16),
          service_cd: msg.type == "SERVICE_CD" ? msg.value : serviceCd,
        };

    // **API 호출 및 스트림 처리
    const res = await fetch("/api/chat", {
      method: "POST",
      headers: {  "Content-Type": "application/json", },
      body: JSON.stringify(bodyParam),
    });

    // **응답 본문 없는 경우
    if (!res.body) {
      setIsBotTyping(false);
      console.error("No response body");
      const botMessage: ChatMsgType = {
        id: String(chatMessages.length + 1),
        userId: "bot",
        message: "No response body",
        createdAt: new Date(),
        last_modified_time: new Date(new Date().getTime() + 9 * 60 * 60 * 1000)
          .toISOString()
          .slice(0, 16),
        service_cd: serviceCd,
      };

      setChatMessages([...chatMessages, botMessage]);
      return;
    }

    // **응답 본문 있는 경우, 스트림 처리
    const reader = res.body.getReader();
    const decoder = new TextDecoder();
    while (true) {
      const { done, value } = await reader.read();
      if (done) {
        setIsBotTyping(false);

        // 봇 메시지 저장
        let botMessage: ChatMsgType = {
          chat_id: chatId,
          user_id: 0,
          user_role_cd: "BOT",
          chat_message: botMessageContent,
          last_modified_time: new Date(
            new Date().getTime() + 9 * 60 * 60 * 1000
          )
            .toISOString()
            .slice(0, 16),
          service_cd: serviceCd,
        };
        chatMessages.push(botMessage);
        setChatMessages(chatMessages);
        botMessageContent = "";

        // DB에 봇 메시지 저장
        const resultChatMsg: ChatMsgType = await chatMessageRegisterTrigger({
          body: botMessage,
        });
        setBotMsg("");
        console.log(
          "*********llm-chat-pannel.tsx: sendChat: resultChatMsg:",
          resultChatMsg
        );
        setServiceCd(resultChatMsg.service_cd ?? serviceCd);
        break;
      }
      botMessageContent += decoder.decode(value);
      setBotMsg(botMessageContent);
    }
  };

  // 마지막 채팅 날짜 표시 처리
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

  // 조건부 렌더링: 채팅방이 선택되지 않은 경우
  if (!chatId) {
    return (
      <div className="w-full h-full flex flex-col items-center justify-center">
        <Label>채팅방이 선택되지 않았습니다.</Label>
      </div>
    );
  }

  // 조건부 렌더링: 사용자 인증이 필요한 경우
  if (!user || !user?.user_id) {
    router.push("/sign-in");
  }

  // 조건부 렌더링: 채팅 메시지가 없는 경우
  if (chatId && (!chatMessages || chatMessages.length < 0)) {
    return (
      <div className="w-full h-full flex flex-col items-center justify-center">
        <Label>대화 내용이 없습니다.</Label>
      </div>
    );
  }

  // 조건부 렌더링: 권한이 없는 경우
  if (!isAuth) {
    return (
      <div className="w-full h-full flex flex-col items-center justify-center">
        <Label>해당 채팅방에 대한 권한이 없습니다.</Label>
      </div>
    );
  }

  return (
    <div
      className={clsx(
        `flex flex-col h-full overflow-scroll scrollbar-hide relative`,
        {
          "pb-32": !isSharpButton,
          "pb-52": isSharpButton,
        }
      )}
    >
      {/* 채팅방 헤더 */}
      <div className="flex justify-between items-center px-6 rounded-t-xl border border-b-nice-gray-9ea/50">
        <h2 className="text-lg font-semibold h-20 flex items-center">
          {chatId}번 채팅방에서{" "}
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
        <div className="flex items-center gap-2">
          <div>
            <GuideTour
              location="llmChatPannel"
              userInfo={user ?? {}}
              run={true}
              steps={steps}
            />
          </div>
          {chatroom?.state_cd == "CRSTT010" &&
            chatroom?.with_bot_yn == true &&
            chatMessages.length > 2 && (
              <div id="chatting-request-btn">
                <ChattingRequestButton chatId={chatId} setChatId={setChatId}>
                  지원요청
                </ChattingRequestButton>
              </div>
            )}
          {chatroom?.state_cd == "CRSTT010" && (
            <div id="chatting-close-btn">
              <ChattingCloseButton
                chatId={chatId}
                setChatId={setChatId}
                refresh={refresh}
                setRefresh={setRefresh}
                chatroomList={chatroomList}
              >
                종료
              </ChattingCloseButton>
            </div>
          )}
        </div>
      </div>

      {/* 채팅 메시지 영역 */}
      {chatId && chatMessages && chatMessages.length > 0 ? (
        <div className="overflow-auto px-6" ref={scrollAreaRef}>
          {chatMessages.map((msg, index) => (
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
          ))}

          {/* 봇 입력 중 표시 */}
          {isBotTyping && (
            <>
              {isBotTyping && botMsg.length == 0 ? (
                <ChatMsg
                  key={99999999}
                  msg={{
                    user_role_cd: "BOT",
                    chat_message: "생각중...",
                    chat_msg_id: 99999999,
                  }}
                />
              ) : (
                <ChatMsg
                  key={99999998}
                  msg={{ user_role_cd: "BOT", chat_message: botMsg }}
                />
              )}
            </>
          )}
        </div>
      ) : (
        <div className="flex-grow overflow-auto"></div>
      )}

      {/* 채팅 입력 영역 */}
      <div
        className={clsx(
          `bg-nice-gray-e3e px-6 rounded-b-xl absolute bottom-0 h-28 w-full`,
          {
            "h-28": !isSharpButton,
            "h-48": isSharpButton,
          }
        )}
      >
        {chatroom?.state_cd == "CRSTT010" && (
          <>
            {/* 셀프서비스 버튼 영역 */}
            {isSharpButton && (
              <div className="h-20 w-full flex items-center bg-nice-gray-f5f rounded-t-xl relative">
                <div className="flex items-center py-5 px-3 text-sm gap-3">
                  <SharpSelfServiceButton
                    onClick={() => sendChat("내부 그룹웨어 비밀번호 초기화")}
                  >
                    # 내부 그룹웨어 비밀번호 초기화
                  </SharpSelfServiceButton>
                  <SharpSelfServiceButton
                    onClick={() => sendChat("외부 그룹웨어 비밀번호 초기화")}
                  >
                    # 외부 그룹웨어 비밀번호 초기화
                  </SharpSelfServiceButton>
                  <SharpSelfServiceButton
                    onClick={() => sendChat("내부메일 비밀번호 초기화")}
                  >
                    # 내부메일 비밀번호 초기화
                  </SharpSelfServiceButton>
                </div>
                <button
                  onClick={() => setIsSharpButton(false)}
                  className="absolute top-2 right-2 text-nice-text/50"
                >
                  <XIcon className="w-5 h-5" />
                </button>
              </div>
            )}

            {/* 채팅 입력 폼 */}
            <div
              id="chat-input"
              className={clsx(
                `flex w-full items-center bg-background rounded-b-xl shadow-sm`,
                {
                  "rounded-t-xl": !isSharpButton,
                }
              )}
            >
              <Textarea
                tabIndex={0}
                placeholder="메시지를 입력하세요.(셀프서비스를 이용하시려면 #을 입력해 보세요.)"
                className="w-full resize-none bg-transparent p-4 border-none flex items-center"
                autoFocus
                spellCheck={false}
                autoComplete="off"
                autoCorrect="off"
                name="message"
                rows={1}
                value={msgValue}
                onChange={(e) => handleInputChange(e)}
                onKeyDown={(e) => handleKeyDown(e)}
              />

              {/* 서비스 선택 드롭다운 */}
              {!isEmbeddingFileListMutating && (
                <div id="select_service">
                  <Select
                    value={serviceCd}
                    onValueChange={handleSelectServiceCd}
                  >
                    <SelectTrigger className="w-[160px]">
                      <SelectValue placeholder="서비스 선택" />
                    </SelectTrigger>
                    <SelectContent>
                      {embeddingFileList.map((file, index) => (
                        <SelectItem
                          key={"selectSvc" + index}
                          value={file.service_cd!.toString()}
                        >
                          {file.service_name}
                        </SelectItem>
                      ))}
                    </SelectContent>
                  </Select>
                </div>
              )}

              {/* 전송 버튼 */}
              <div className="px-4">
                <button
                  className="bg-nice-blue-500 rounded-full flex items-center justify-center pt-3.5 pr-3.5 pb-3 pl-3 shadow-md disabled:opacity-50"
                  disabled={msgValue.trim() === "" || isBotTyping}
                  onClick={handleSubmit}
                >
                  <Send className="text-white" />
                </button>
              </div>
            </div>
            <FooterText className="hidden sm:block" />
          </>
        )}
      </div>
    </div>
  );
}

/**
 * 셀프서비스 버튼 컴포넌트
 */
const SharpSelfServiceButton = forwardRef<HTMLButtonElement, ButtonProps>(
  ({ className, ...props }, ref) => {
    const Comp = "button";
    return (
      <Comp
        className={
          "rounded-full px-3 py-2 bg-nice-gray-e3e/50 hover:bg-nice-sky/50 shadow-sm"
        }
        ref={ref}
        {...props}
      />
    );
  }
);
SharpSelfServiceButton.displayName = "SharpSelfServiceButton";
export default SharpSelfServiceButton;
