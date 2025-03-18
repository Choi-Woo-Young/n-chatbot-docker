import { Card, CardContent } from "@/components/ui/card";
import { cn } from "@/lib/utils";
import { Label } from "@radix-ui/react-menubar";
import { Loader } from "lucide-react";
import { useClientSession } from "@/lib/hooks/client/use-client-session";
import { use, useCallback, useMemo } from "react";
import { useSelfServiceStore } from "@/store/self-service-store";
import Image from "next/image";
import botImg from "/public/images/bot3.png";
import userImg from "/public/images/user.png";
import { usePathname } from "next/navigation";
import React from "react";

interface ChatMsgProps {
  key: number;
  msg: ChatMsgType;
  userId?: number;
  chatroom_state_cd?: string;
}

export const ChatMsg = ({ msg, chatroom_state_cd }: ChatMsgProps) => {
  const user = useClientSession();
  let chatMsg = msg;

  const selfServiceOption = useMemo(() => {
    if (msg.user_role_cd === "BOT") {
      const regex = /\*\*\*(.*?)\*\*\*/;
      const match = msg.chat_message?.match(regex);

      if (match) {
        const [, before] = match;
        // 작은따옴표를 큰따옴표로 변경
        const jsonString = before.replace(/'/g, '"');

        return { before: jsonString };
      } else {
        return null;
      }
    }
    return null;
  }, [msg]);

  if (selfServiceOption) {
    chatMsg = {
      ...msg,
      chat_message: msg.chat_message?.replace(/\*\*\*(.*?)\*\*\*/g, ""),
    };
  }

  const renderChatCard = useCallback(() => {
    if (msg.user_role_cd === "BOT") {
      if (selfServiceOption) {
        console.log("selfServiceOption", selfServiceOption);
        const option = JSON.parse(selfServiceOption.before);
        // const option = selfServiceOption.before;
        return (
          <>
            <SelfServiceCard
              msg={chatMsg.chat_message!}
              chatroom_state_cd={chatroom_state_cd ?? ""}
              option={option}
              msgDate={chatMsg.last_modified_time}
            />
          </>
        );
      } else {
        return <OthersChatCard key={chatMsg.chat_msg_id ?? 0} msg={chatMsg} />;
      }
    } else {
      return msg.user_id === user?.user_id ? (
        <MyChatCard
          key={chatMsg.chat_msg_id ?? 0}
          msg={chatMsg}
          userId={user?.user_id}
        />
      ) : (
        <OthersChatCard key={chatMsg.chat_msg_id ?? 0} msg={chatMsg} />
      );
    }
  }, [msg, user?.user_id]);

  return <>{renderChatCard()}</>;
};

const MyChatCard = ({ msg, userId }: ChatMsgProps) => {
  const chatMessage = msg.chat_message || "";

  return (
    <>
      <Card
        className={cn(
          "flex items-center p-0 mt-4 pr-1.5 w-full bg-transparent shadow-none justify-end"
        )}
      >
        <CardContent className="flex flex-row items-end gap-2 p-0">
          {msg.user_id == userId && msg.unread_count !== 0 && (
            <h4 className="text-xs text-nice-999">{msg.unread_count}</h4>
          )}
          <div
            className={cn(
              "p-4 rounded-lg shadow-sm bg-nice-sky max-w-xs w-fit items-center"
            )}
          >
            {msg.chat_msg_id === 99999999 ? (
              <Loader className="animate-spin w-4.5 h-4.5 text-nice-666" />
            ) : (
              // <Label>{msg.chat_message}</Label>
              <Label>
                {chatMessage.split("\n").map((line, index) => (
                  <React.Fragment key={index}>
                    {line}
                    {index < chatMessage.split("\n").length - 1 && <br />}
                  </React.Fragment>
                ))}
              </Label>
            )}
          </div>
          {msg.user_id != userId && msg.unread_count !== 0 && (
            <h4 className="text-xs text-nice-999">{msg.unread_count}</h4>
          )}
        </CardContent>
      </Card>
      <h5 className="w-full flex justify-end text-xs text-nice-999 pr-2">
        {msg.last_modified_time?.split("T")[1].split(":").slice(0, 2).join(":")}
      </h5>
    </>
  );
};

const OthersChatCard = ({ msg }: ChatMsgProps) => {
  const chatMessage = msg.chat_message || "";

  return (
    <>
      <Card
        className={cn(
          "flex items-start gap-4 p-0 mt-4 pr-1.5 w-full bg-transparent shadow-none justify-start"
        )}
      >
        {msg.user_role_cd === "BOT" ? (
          <div className="bg-nice-blue-100/10 p-2 rounded-full shadow-md aspect-square flex items-center justify-center">
            {/* <div className="relative w-[40px] h-[40px] overflow-hidden"> */}
            <Image src={botImg} alt="bot" width={40} height={40} className="" />
            {/* </div> */}
            {/* <BotMessageSquare className="text-nice-blue-100" /> */}
          </div>
        ) : (
          <div className="bg-nice-blue-100/10 p-2 rounded-full shadow-md aspect-square flex items-center justify-center">
            <Image src={userImg} alt="bot" width={40} height={40} />
            {/* <BotMessageSquare className="text-nice-blue-100" /> */}
          </div>
        )}
        <div className="flex flex-col">
          <div className="text-xs mb-2 font-bold">
            {msg.user_role_cd === "BOT"
              ? "나비스(NARVIS)"
              : `${msg.dept_nm ?? ""} ${msg.user_nm ?? ""}`}
          </div>
          <div className="flex">
            <CardContent
              className={cn("p-4 rounded-lg shadow-sm bg-white max-w-md")}
            >
              <div className="w-fit items-center gap-4">
                {msg.chat_msg_id === 99999999 ? (
                  <Loader className="animate-spin w-4.5 h-4.5 text-nice-666" />
                ) : (
                  // <Label>{msg.chat_message}</Label>
                  <Label>
                    {chatMessage.split("\n").map((line, index) => (
                      <React.Fragment key={index}>
                        {line}
                        {index < chatMessage.split("\n").length - 1 && <br />}
                      </React.Fragment>
                    ))}
                  </Label>
                )}
              </div>
            </CardContent>
          </div>
        </div>
      </Card>
      <h5 className="w-full flex justify-start mt-1 mb-4 text-xs text-nice-999 pl-[4.6rem]">
        {msg.last_modified_time?.split("T")[1].split(":").slice(0, 2).join(":")}
      </h5>
    </>
  );
};

const SelfServiceCard = ({
  msg,
  chatroom_state_cd,
  option,
  msgDate,
}: {
  msg: string;
  chatroom_state_cd: string;
  option: SelfServiceTypeType;
  msgDate?: string;
}) => {
  return (
    <>
      <Card
        className={cn(
          "flex items-start gap-4 p-0 mt-4 pr-1.5 w-full bg-transparent shadow-none justify-start"
        )}
      >
        <div className="bg-nice-blue-100/10 p-2 rounded-full shadow-md aspect-square flex items-center justify-center">
          <Image src={botImg} alt="bot" width={40} height={40} />
          {/* <BotMessageSquare className="text-nice-blue-100" /> */}
        </div>
        <div className="flex flex-col">
          <div className="text-xs mb-2 font-bold">나비스(NARVIS)</div>
          <div className="flex"></div>
          <CardContent
            className={cn("p-4 rounded-lg shadow-sm bg-white max-w-md")}
          >
            <div className="w-fit items-center gap-4">
              <Label>{msg}</Label>
              <SelfServiceButton
                option={option}
                chatroom_state_cd={chatroom_state_cd}
              />
            </div>
          </CardContent>
        </div>
      </Card>
      <h5 className="w-full flex justify-start mt-1 mb-4 text-xs text-nice-999 pl-[4.5rem]">
        {msgDate?.split("T")[1].split(":").slice(0, 2).join(":")}
      </h5>
    </>
  );
};

const SelfServiceButton = ({
  option,
  chatroom_state_cd,
}: {
  option: SelfServiceTypeType;
  chatroom_state_cd: string;
}) => {
  const path = usePathname();

  console.log("chatroom_state_cd", chatroom_state_cd);

  const isDisable =
    !(path.indexOf("request") > -1) || chatroom_state_cd === "CRSTT030";

  const { updateActions } = useSelfServiceStore((state) => state);
  const type = option.type;
  const handleSelfButton = (item: SelfServiceButtonType) => {
    updateActions(item.type, item.name, item.value, item.previous_query ?? "");
  };

  return type === "col" ? (
    <div className="flex gap-2 text-sm mt-3 text-nice-blue-300 w-full">
      {option.items.map((item, index) => (
        <button
          key={`${type}-${index}`}
          onClick={() =>
            handleSelfButton({ ...item, previous_query: option.previous_query })
          }
          className="bg-nice-blue-700/5 p-2 h-10 rounded-lg shadow-sm w-full hover:bg-nice-blue-700/10 disabled:bg-nice-blue-700/5 disabled:cursor-not-allowed"
          disabled={isDisable}
        >
          {item.name}
        </button>
      ))}
    </div>
  ) : (
    <div className="flex flex-col gap-2 text-sm mt-3 text-nice-blue-300">
      {option.items.map((item, index) => (
        <button
          key={`${type}-${index}`}
          onClick={() =>
            handleSelfButton({ ...item, previous_query: option.previous_query })
          }
          className="bg-nice-blue-700/5 p-2 h-10 rounded-lg shadow-sm w-full hover:bg-nice-blue-700/10 disabled:bg-nice-blue-700/5 disabled:cursor-not-allowed"
          disabled={isDisable}
        >
          {item.name}
        </button>
      ))}
    </div>
  );
};
