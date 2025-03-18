"use client";

import { Button } from "@/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/ui/dialog";
import { Textarea } from "@/components/ui/textarea";
import { useClientSession } from "@/lib/hooks/client/use-client-session";
import { useSubmitFeedback } from "@/lib/hooks/client/use-feedback-fetcher";
import { format } from "date-fns";
import html2canvas from "html2canvas";
import { use, useContext, useEffect, useState } from "react";
import { CaptureDivContext } from "./capture-div";
import { toast } from "sonner";

export default function FeedbackButton() {
  const captureDivRef = useContext(CaptureDivContext);
  const user = useClientSession();
  const { trigger: submitFeedbackTrigger, isMutating } = useSubmitFeedback();
  const [contents, setContents] = useState<string>("");
  const [isDialogOpen, setIsDialogOpen] = useState<boolean>(false);

  const handleSubmit = async () => {
    if (!captureDivRef || !captureDivRef.current) return;

    if (contents.trim() === "") {
      toast.error("내용을 입력해주세요.", {
        position: "top-center",
      });
      return;
    }

    try {
      const div = captureDivRef.current;
      const canvas = await html2canvas(div, { scale: 2 });
      const dataUrl = canvas.toDataURL("image/png");

      // 현재 날짜와 시간 포맷팅
      const now = new Date();
      const folderName = format(now, "yyMMdd");
      const fileName = `${format(now, "yyMMddHHmm")}_${user?.user_id}.png`;

      submitFeedbackTrigger({
        body: {
          imageData: dataUrl,
          folderName,
          fileName,
          contents,
          user_id: user?.user_id,
        },
      }).then((data) => {
        setIsDialogOpen(false);
        setContents("");
        toast.success("제출이 완료되었습니다.", {
          description: "나비스(NARVIS): 소중한 의견 감사합니다! 더 성장할게요!",
          position: "top-center",
        });
      });
    } catch (error) {
      console.error("이미지 캡처 중 오류 발생:", error);
    }
  };

  return (
    <Dialog open={isDialogOpen} onOpenChange={setIsDialogOpen}>
      <DialogTrigger asChild>
        <Button className="bg-transparent text-white hover:bg-nice-bg transform hover:scale-105 hover:text-red-500 transition-transform duration-300 pb-0">
          <span className="underline pr-1">오류신고 및 의견</span>🚨
        </Button>
      </DialogTrigger>
      <DialogContent className="sm:max-w-[500px]">
        <DialogHeader>
          <DialogTitle className="text-xl font-bold">
            오류신고 및 의견 제출
          </DialogTitle>
          <DialogDescription className="text-xs">
            {/* 현재 챗봇 화면이 캡처되어 함께 제출됩니다. */}
            {/* <br /> */}
            오류 발생 또는 개선을 원하는 화면에서 입력해주세요.
          </DialogDescription>
        </DialogHeader>
        <div className="flex">
          <Textarea
            id="opinion"
            className="h-56"
            placeholder="서비스 이용 중 발생한 오류나 개선이 필요한 점을 작성해 주세요."
            value={contents}
            onChange={(e) => setContents(e.target.value)}
          />
        </div>
        <DialogFooter>
          <Button
            type="submit"
            className="w-full h-12 text-lg bg-nice-blue-500 rounded-full hover:bg-nice-blue-700"
            onClick={handleSubmit}
          >
            제출
          </Button>
        </DialogFooter>
      </DialogContent>
    </Dialog>
  );
}
