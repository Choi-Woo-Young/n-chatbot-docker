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
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { useChatroomRegister } from "@/lib/hooks/client/use-chatroom-fetcher";
import { useClientSession } from "@/lib/hooks/client/use-client-session";
import { searchStore } from "@/store/search-store";
import Link from "next/link";

interface ChattingRequestButtonProps {
  children: React.ReactNode;
  chatId: number;
  setChatId: (chatId: number) => void;
}
export function ChattingRequestButton({
  children,
  chatId,
  setChatId,
}: ChattingRequestButtonProps) {
  const user: UsersType | null = useClientSession();
  const { trigger: chatroomRegisterTrigger, isMutating } =
    useChatroomRegister();
  const { setIsSupportChat } = searchStore();

  const onChatroomRegister = async () => {
    //로그인한 사용자와 target 사용자의 채팅방 생성
    //chat_id , target_user_id, session_user_id  중복 체크 필요
    const param_chatroom: ChatRoomType = {
      ref_chat_id: chatId,
      user_id: user?.user_id,
      state_cd: "CRSTT030", //지원대기
      with_bot_yn: false,
      chat_title: chatId + "문의건 담당자 지원 대기",
      chat_content: "New Chat Content",
      hashtag: "",
    };

    console.log(
      "FloatingButton - param_chatroom: " + JSON.stringify(param_chatroom)
    );

    try {
      const result = await chatroomRegisterTrigger({
        body: param_chatroom,
      });
      console.log(
        "chatroomRegisterTrigger - result: " + JSON.stringify(result)
      );
      setChatId(result.chat_id);
    } catch (error) {
      console.log("chatroomRegisterTrigger - error: " + error);
    } finally {
      console.log("chatroomRegisterTrigger - finally");
    }

    // 지원대기 토글 활성화 및 리스트 갱신
    setIsSupportChat(true);
  };

  return (
    <Dialog>
      <DialogTrigger asChild>
        <Button className="border border-nice-text rounded-full bg-transparent text-nice-text hover:bg-nice-bg transform hover:scale-105 hover:text-white transition-transform duration-300">
          {children}
        </Button>
      </DialogTrigger>
      <DialogContent className="sm:max-w-[425px]">
        <DialogHeader>
          <DialogTitle>담당자에게 지원 요청하시겠습니까?</DialogTitle>
          <DialogDescription>
            헬프데스크 및 업무 담당자에게 지원 요청을 합니다. 담당자께서 지원
            가능한 경우 매신저 알려드리겠습니다.
          </DialogDescription>
        </DialogHeader>
        <DialogFooter>
          <Button
            type="submit"
            className="w-full h-12 text-lg bg-nice-blue-500 rounded-full hover:bg-nice-blue-700"
            onClick={onChatroomRegister}
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
  );
}
