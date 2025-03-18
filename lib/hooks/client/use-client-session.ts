'use client';
import { useSession } from "next-auth/react";
import { useEffect } from "react";

// 채팅방 목록 조회
export function useClientSession(): UsersType | null {

  const {data: session, status} = useSession();

  if (!session) return null;
  const sessionJson = JSON.stringify(session.user);
  const user: UsersType = sessionJson? JSON.parse(sessionJson):{};
  
  return user;
}
