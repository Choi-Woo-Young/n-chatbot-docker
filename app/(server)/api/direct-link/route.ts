// import { ApiRouteFetch, createRequestOptions } from "@/lib/hooks/server/api-route-fetch";
import {
  ApiRouteAxios,
  createRequestConfig,
} from "@/lib/hooks/server/api-route-fetch";
import { auth } from "@/auth";
import { headers } from "next/headers";

export const dynamic = "force-dynamic"; // defaults to auto

export async function GET(request: Request) {
  try {
    const url = new URL(request.url);
    const key = url.searchParams.get("key");
    console.log("key", key);
    const params = JSON.parse(decodeURIComponent(key ?? ""));
    console.log("params", JSON.stringify(params));
    const chat_id = params.chat_id;

    //chat_id로 채팅방 정보와 사용자 정보 가져와서 어느 메뉴로 이동할지 결정
    //사용자 정보 조회
    const header = headers();
    const ip = (header.get("x-forwarded-for") ?? "127.0.0.1").split(",")[0];
    const user: UsersType = await getUserFromDbByIP(ip);
    console.log("getUserFromDbByIP > user:" + JSON.stringify(user));

    //채팅방 정보 조회
    const chatRoom: ChatRoomType = await getChatroomByChatId(chat_id);
    console.log("getChatroomByChatId > chatRoom:" + JSON.stringify(chatRoom));
    const isClosed =
      chatRoom.state_cd && chatRoom.state_cd in ["CRSTT020", "CRSTT050"]
        ? true
        : false;
    //CRSTT010:봇과채팅중, CRSTT020:이관종료, CRSTT030:지원대기, CRSTT040:지원중, CRSTT050:종료

    let nextUrl = "";
    const isManager =
      user.user_id == chatRoom.user_id
        ? false
        : user.user_id == chatRoom.mgr_user_id
        ? true
        : user.role_cd == "HELP" || user.role_cd == "MGR"
        ? true
        : false;
    if (isManager) {
      if (isClosed) {
        //Support> 지원대기 메뉴로 이동
        nextUrl = "/finished";
      } else {
        //Support> 지원완료 메뉴로 이동
        nextUrl = "/waiting";
      }
    } else {
      if (isClosed) {
        //My>완료내역 메뉴로 이동
        nextUrl = "/my/finished";
      } else {
        //My>진행중 메뉴로 이동
        nextUrl = "/my/request";
      }
    }

    const session = await auth();
    console.log("session", JSON.stringify(session));
    if (session) {
      return Response.redirect(
        `${process.env.NEXT_PUBLIC_API_URL}` + nextUrl + `?chat_id=` + chat_id,
        302
      );
    } else {
      const url = new URL(request.url);
      const signInUrl = new URL(
        "/sign-in",
        `${process.env.NEXT_PUBLIC_API_URL ?? url.origin}`
      );
      let user = null;
      const header = headers();
      if (!header.get("x-forwarded-for")) {
        return Response.redirect(
          `${process.env.NEXT_PUBLIC_API_URL}/sign-in`,
          302
        );
      }
      const ip = header.get("x-forwarded-for")!.split(",")[0];

      user = await getUserFromDbByIP(ip);
      signInUrl.searchParams.set(
        "info",
        encodeURIComponent(JSON.stringify(user))
      );
      signInUrl.searchParams.set("dlink", nextUrl + `?chat_id=` + chat_id);
      return Response.redirect(signInUrl);
    }
  } catch (error) {
    console.error("Failed to parse user info:", error);
    return Response.redirect(`${process.env.NEXT_PUBLIC_API_URL}/sign-in`, 302);
  }
}

async function getUserFromDbByIP(ip: string): Promise<UsersType> {
  console.log("getUserFromDbByIP > ip - " + ip);
  const res = await fetch(`${process.env.FAST_API_URL}/users/ip`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({
      ip: ip,
    }),
  });

  const user: UsersType = await res.json();

  if (res.ok) {
    console.log("getUserFromDbByIP > user:", user);
    return user;
  }
  return {} as UsersType;
}

async function getChatroomByChatId(chat_id: number): Promise<ChatRoomType> {
  console.log("getChatroomByChatId > chat_id - " + chat_id);
  const res = await fetch(
    `${process.env.FAST_API_URL}/chatroom/get?chat_id=` + chat_id,
    {
      method: "GET",
      headers: { "Content-Type": "application/json" },
    }
  );

  const chatroom: ChatRoomType = await res.json();

  if (res.ok) {
    console.log("getChatroomByChatId > chatroom:", chatroom);
    return chatroom;
  }
  return {} as ChatRoomType;
}
