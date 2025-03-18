"use client";
import { Button } from "@/components/ui/button";
import {
  Dialog,
  DialogClose,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/ui/dialog";
import {
  useChatroomClose,
  useChatroomRegister,
} from "@/lib/hooks/client/use-chatroom-fetcher";
import { useClientSession } from "@/lib/hooks/client/use-client-session";
import { set } from "zod";

interface ChattingCloseButtonProps {
  children: React.ReactNode;
  chatId: number;
  setChatId: (chatId: number) => void;
  refresh: boolean;
  setRefresh: (refresh: boolean) => void;
  chatroomList: ChatRoomType[];
  ws?: WebSocket;
  isUsr?: boolean;
}
export function ChattingCloseButton({
  children,
  chatId,
  setChatId,
  refresh,
  setRefresh,
  chatroomList,
  ws,
  isUsr,
}: ChattingCloseButtonProps) {
  const user: UsersType | null = useClientSession();
  const { trigger: chatroomCloseTrigger, isMutating } = useChatroomClose();

  const chatroomClose = () => {
    //상대방에게 종료 메시지 전송
    if (ws) {
      const closeMessage: ChatMsgType = {
        chat_id: chatId,
        user_id: user?.user_id!,
        user_role_cd: isUsr ? "USR" : "MGR",
        chat_message: user?.user_nm + "님이 지원 종료하였습니다.",
        selected_cd: "CRSTT050",
        user_nm: user?.user_nm,
        dept_nm: user?.dept_nm,
      };
      ws.send(JSON.stringify(closeMessage));
    }

    const param_chatroom: ChatRoomType = {
      chat_id: chatId,
      user_id: user?.user_id,
      state_cd: "CRSTT050", //종료
    };

    chatroomCloseTrigger({
      body: param_chatroom,
    }).then((result) => {
      console.log(
        "chatting-close-button > chatroomCloseTrigger: " +
          JSON.stringify(result.chat_id)
      );
      setChatId(result.chat_id);
      //chatroomList && setChatId(chatroomList[0].chat_id!);
      setRefresh(!refresh);
    });
  };

  return (
    <>
      <Dialog>
        <DialogTrigger asChild>
          <Button className="border border-nice-text rounded-full bg-transparent text-nice-text hover:bg-nice-bg transform hover:scale-105 hover:text-white transition-transform duration-300">
            {children}
          </Button>
        </DialogTrigger>
        <DialogContent className="sm:max-w-[425px]">
          <DialogHeader>
            <DialogTitle>이 채팅방을 종료하시겠습니까?</DialogTitle>
            <DialogDescription>
              {isUsr
                ? "현재 진행 중인 채팅이 종료됩니다. 문의 해결은 되셨나요?"
                : "현재 지원 중인 채팅이 종료됩니다."}
            </DialogDescription>
          </DialogHeader>
          <DialogFooter>
            <Button
              type="submit"
              className="w-full h-12 text-lg bg-nice-blue-500 rounded-full hover:bg-nice-blue-700"
              onClick={chatroomClose}
            >
              예
            </Button>

            <DialogClose asChild>
              <Button className="w-full h-12 text-lg bg-transparent border border-nice-bg text-nice-bg hover:bg-nice-bg hover:text-white rounded-full">
                아니요
              </Button>
            </DialogClose>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </>
  );
}
