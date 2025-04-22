import { IpConfirm } from "@/components/molecules/auth/ip_comfirm";
import { useServerSession } from "@/lib/hooks/server/use-server-session";
import { redirect } from "next/navigation";


// URL 쿼리 파라미터 타입 정의
interface SignInPageProps {
  searchParams: {
    info?: string;    // 사용자 정보 (JSON 문자열)
    dlink?: string;   // 직접 링크 URL
  };
}

// TODO 코드 투어 - [로그인] 110. 로그인 페이지 컴포넌트
// [keyword] App Router, server component, client component

/**
 * 로그인 페이지 컴포넌트
 * @param searchParams - URL 쿼리 파라미터 (사용자 정보, 직접 링크)
 * @returns 로그인 페이지 또는 리다이렉션
 */
export default async function SignInPage({ searchParams }: SignInPageProps) {
  // 서버 세션에서 사용자 정보 가져오기
  const user = await useServerSession();

  // 사용자 정보와 직접 링크 초기화
  let userInfo: UsersType = {};
  let directLink: string = ""; //리다이렉션 링크(내부메신저 등에서 바로 채팅방으로 이동시키 위해 사용)

  // URL에서 사용자 정보 파싱
  if (searchParams.info) {
    try {
      userInfo = JSON.parse(decodeURIComponent(searchParams.info));
      directLink = searchParams.dlink ? decodeURIComponent(searchParams.dlink) : "";
      console.log("Parsed user info:", userInfo, "Direct link:", directLink);
    } catch (error) {
      console.error("Failed to parse user info:", error);
    }
  }

  // 다이렉트 링크가 있고 사용자가 인증된 경우 리다이렉션
  if (directLink && user) {
    console.log("Authenticated user:", user);
    return redirect(directLink || "/my/request");
  }

  // IP 확인 컴포넌트 렌더링
  return <IpConfirm user={userInfo} directLink={directLink} />;
}
