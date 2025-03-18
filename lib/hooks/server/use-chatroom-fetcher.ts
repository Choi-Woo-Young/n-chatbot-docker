import exp from "constants";
import { signInSchema } from "../../zod";

// 채팅방 목록 조회
export async function useChatroomList(
  userId: number,
  stateCdList: string[]
): Promise<ChatRoomType[]> {
  let queryString = "";

  if (!userId) {
    queryString = queryString + `user_id=${userId}&`;
  }

  if (stateCdList) {
    queryString =
      queryString +
      stateCdList
        .map((cd) => `state_cd_list=${encodeURIComponent(cd)}`)
        .join("&");
  }

  const url =
    process.env.NEXT_PUBLIC_API_URL + `/api/chatroom/list?${queryString}`;
  const res = await fetch(url, {
    method: "GET",
    headers: {
      "Content-Type": "application/json",
    },
    cache: "no-cache",
  });
  const data = await res.json();
  console.log(data);

  const items: ChatRoomType[] = data
    ? data.map((item: any) => {
        return {
          chat_id: item.chat_id,
          chat_group_id: item.chat_group_id,
          state_cd: item.state_cd,
          with_bot_yn: item.with_bot_yn,
          chat_title: item.chat_title,
          chat_content: item.chat_content,
          hashtag: item.hashtag,
        };
      })
    : [];

  return items;
}

export async function useChatroomRegister(
  userId: number,
  chatroom: ChatRoomType
): Promise<ChatRoomType | null> {
  let queryString = "";
  if (!userId || !chatroom) {
    return null;
  }

  queryString = queryString + `user_id=${userId}`;
  const url =
    process.env.NEXT_PUBLIC_API_URL + `/api/chatroom/register?${queryString}`;
  const res = await fetch(url, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(chatroom),
    cache: "no-cache",
  });
  console.log("useChatroomRegister:" + res.json());
  const data: ChatRoomType = await res.json();
  console.log("useChatroomRegister:" + data);

  return data;
}
