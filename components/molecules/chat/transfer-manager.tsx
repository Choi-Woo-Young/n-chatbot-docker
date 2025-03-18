"use client";

import { Button } from "@/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/ui/dialog";
import { Separator } from "@/components/ui/separator";
import {
  useManagerList,
  useManagerTransfer,
} from "@/lib/hooks/client/use-transfer-fetcher";
import { useEffect, useState } from "react";
import { toast } from "sonner";

interface TransferManagerProps {
  chatId: number;
  setChatId: (chatId: number) => void;
  refresh: boolean;
  setRefresh: (refresh: boolean) => void;
}

export default function TransferManager({
  chatId,
  setChatId,
  refresh,
  setRefresh,
}: TransferManagerProps) {
  const { trigger: getTrigger } = useManagerList();
  const { trigger: postTrigger } = useManagerTransfer();
  const [managers, setManagers] = useState<ManagerType[]>([]);
  const [isOpened, setIsOpened] = useState(false);

  const getManagerList = async () => {
    const data = await getTrigger({ body: { chat_id: chatId } });
    setManagers(data);
  };

  useEffect(() => {
    getManagerList();
  }, [chatId, refresh]);

  const handleTransfer = async (userId: number) => {
    try {
      const response = await postTrigger({
        body: {
          chatId: chatId,
          mgrUserId: userId,
        },
      });

      if (response) {
        setIsOpened(false);
        toast.success("담당자 이관이 완료되었습니다.", {
          position: "top-center",
        });
      }
    } catch (error: any) {
      console.error("Error:", error);
      toast.error("지원 요청 중 오류가 발생했습니다.", {
        position: "top-center",
      });
    }
    setChatId(chatId);
    setRefresh(!refresh);
  };

  return (
    <Dialog open={isOpened} onOpenChange={setIsOpened}>
      <DialogTrigger asChild>
        <Button className="border border-nice-text rounded-full bg-transparent text-nice-text hover:bg-nice-bg transform hover:scale-105 hover:text-white transition-transform duration-300">
          담당자 이관
        </Button>
      </DialogTrigger>
      <DialogContent className="sm:max-w-[425px]">
        <DialogHeader>
          <DialogTitle>담당자 이관</DialogTitle>
          <DialogDescription>이관할 담당자를 선택해 주세요.</DialogDescription>
        </DialogHeader>
        <div className="space-y-2 py-4 max-h-[70vh] overflow-y-scroll">
          {managers.map((manager, index) => {
            return (
              <div key={manager.user_id}>
                <div className="flex justify-between items-center">
                  <span className="text-sm text-nice-333">
                    {manager.user_nm}({manager.email})
                  </span>
                  <button
                    onClick={() => handleTransfer(manager.user_id)}
                    className="bg-nice-blue-500 text-xs px-3 py-2 text-white rounded-full"
                  >
                    이관
                  </button>
                </div>
                {index !== managers.length - 1 && (
                  <Separator className="my-2" />
                )}
              </div>
            );
          })}
        </div>
      </DialogContent>
    </Dialog>
  );
}
