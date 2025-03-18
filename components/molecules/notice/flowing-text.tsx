"use client";

import { useNoticeList } from "@/lib/hooks/client/use-notice-fetcher";
import { useCallback, useEffect, useState } from "react";

type NoticeType = {
  contents: string;
  startTime: string;
  endTime: string;
};

export function FlowingText() {
  const [text, setText] = useState<string>("");
  const [animationDuration, setAnimationDuration] = useState<string>("20s");
  const [key, setKey] = useState<number>(0);
  const { trigger: noticeTrigger, isMutating: noticeIsMutating } =
    useNoticeList();

  const fetchNotice = useCallback(async () => {
    try {
      const data = await noticeTrigger({ body: { is_current_notice: true } });
      if (data.length === 0) return;

      let resultText = "※ " + data[0].contents;

      if (data.length > 1) {
        for (let i = 1; i < data.length; i++) {
          resultText += `<span class="pl-40">※ ${data[i].contents}</span>`;
        }
      }

      const textLength = resultText.length;
      const duration = Math.min(Math.max(textLength * 0.5, 30), 60);

      setText(resultText);
      setAnimationDuration(`${duration}s`);
      setKey((prev) => prev + 1);
    } catch (error) {
      console.error("Failed to fetch notices:", error);
    }
  }, [noticeTrigger]);

  useEffect(() => {
    // 초기 데이터 로드
    fetchNotice();

    // 30분마다 데이터 새로고침
    const interval = setInterval(fetchNotice, 30 * 60 * 1000);

    return () => clearInterval(interval);
  }, [fetchNotice]);

  const animationStyle = `
    @keyframes flow {
      from { transform: translateX(30%); }
      to { transform: translateX(-100%); }
    }

    .flowing-text {
      animation: flow var(--duration) linear infinite;
      will-change: transform;
    }

    .flowing-text:hover {
      animation-play-state: paused;
    }
  `;

  return (
    <div className="relative overflow-hidden w-[55rem] h-full flex items-center pl-5 text-nice-gray-9ea">
      <style>{animationStyle}</style>
      {text && (
        <div
          key={`notice-${key}`}
          className="absolute whitespace-nowrap text-lg font-semibold text-white flowing-text"
          style={
            {
              "--duration": animationDuration,
            } as React.CSSProperties
          }
          dangerouslySetInnerHTML={{
            __html: `${text}<span class="pl-40">${text}</span><span class="pl-40">${text}</span>`,
          }}
        />
      )}
    </div>
  );
}
