import { auth } from "@/auth";
import { type ClassValue, clsx } from "clsx";
import { getSession } from "next-auth/react";
import { twMerge } from "tailwind-merge";

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

//Direct Link 생성
export function makeDirectUrlOfChatroom(chatId: number) {
  const param = { chat_id: chatId };
  const encParam = encodeURIComponent(JSON.stringify(param));
  console.log(
    `${process.env.NEXT_PUBLIC_API_URL}/api/direct-link?key=` + encParam
  );
  //63 -->http://localhost:3000/api/direct-link?key= %7B%22chat_id%22%3A63%7D
  //62 -->http://localhost:3000/api/direct-link?key= %7B%22chat_id%22%3A62%7D
  return `${process.env.NEXT_PUBLIC_API_URL}/api/direct-link?key=` + encParam;
}

export function makeLatestMessageTime(time?: string) {
  if (!time) {
    console.log("@@@@@time", time);
    return null;
  }

  const formattedDate = time
    .substring(2, 16)
    .replace("T", " ")
    .replaceAll("-", ".");

  // 현재 날짜와 비교
  const today = new Date().toISOString().substring(0, 10);
  const lastModifiedDate = time.substring(0, 10);

  if (today === lastModifiedDate) {
    // 오늘이면 시간만 반환
    return time.substring(11, 16);
  } else {
    // 오늘이 아니면 일자와 시간 모두 반환
    return formattedDate;
  }
}
