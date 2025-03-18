import { auth } from "@/auth";
import { authConfig } from "@/auth.config";

// 채팅방 목록 조회
export async function useServerSession(): Promise<UsersType | null> {
  const session = await auth();
  //console.log('useServerSession:' + JSON.stringify(session));
  if (!session) return null;
  const sessionJson = JSON.stringify(session.user);
  const user: UsersType = JSON.parse(sessionJson);
  return user;
}
