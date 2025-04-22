import NextAuth from "next-auth";
import { authConfig } from "./auth.config";
import { NextRequest, NextResponse } from "next/server";
import { auth } from "@/auth";


// 미들웨어 적용 경로 설정
export const config = {
  matcher: [
    "/((?!api|_next/static|_next/image|favicon.ico|sign-in|direct-link).*)",
  ],
};

// NextAuth 기본 인증 미들웨어 설정
export default NextAuth(authConfig).auth;

const PUBLIC_PATHS = ["/confirm", "/sign-in", "/direct-link"]; //공개 경로
const STATIC_PATHS = ["/api", "/_next/static", "/_next/image", "/favicon.ico"]; //정적 파일 경로

// TODO 코드 투어 - [로그인] 100. 매 호출 발생시마다 미들웨어 호출됨.(미들웨어 적용 경로 설정 필요)
// TODO 코드 투어 - [봇과채팅](프론트) 100. 매 호출 발생시마다 미들웨어 호출됨.(미들웨어 적용 경로 설정 필요)
export async function middleware(request: NextRequest) {
  const { pathname } = request.nextUrl;
  
  // 정적 파일이나 공개 경로는 미들웨어 처리 건너뛰기
  if (isPublicOrStaticPath(pathname)) {
    return NextResponse.next();
  }

  try {
    // 세션 정보 가져오기
    const session = await auth();
    
    // 세션이 없는 경우 IP 기반 인증 처리
    if (!session?.user) {
      return handleUnauthenticatedRequest(request);
    }

    // 세션이 있는 경우 사용자 정보 처리
    return handleAuthenticatedRequest(session.user);
  } catch (error) {
    console.error("Middleware error:", error);
    return NextResponse.redirect(new URL("/sign-in", request.url));
  }
}

// 공개 경로 또는 정적 파일 경로 확인
function isPublicOrStaticPath(pathname: string): boolean {
  return PUBLIC_PATHS.some(path => pathname.startsWith(path)) ||
         STATIC_PATHS.some(path => pathname.startsWith(path));
}

// 인증되지 않은 요청 처리
async function handleUnauthenticatedRequest(request: NextRequest): Promise<NextResponse> {
  const ip = getClientIP(request);
  const user = await getUserFromDbByIP(ip);
  
  if (user) {
    const signInUrl = new URL("/sign-in", request.url);
    signInUrl.searchParams.set("info", encodeURIComponent(JSON.stringify(user)));
    return NextResponse.redirect(signInUrl);
  }
  
  return NextResponse.redirect(new URL("/confirm", request.url));
}

// 인증된 요청 처리
function handleAuthenticatedRequest(user: any): NextResponse {
  console.log("Authenticated user:", user);
  return NextResponse.next();
}

// 클라이언트 IP 주소 추출
function getClientIP(request: NextRequest): string {
  const forwardedFor = request.headers.get("x-forwarded-for");
  return (forwardedFor ?? "127.0.0.1").split(",")[0];
}

// IP 주소로 사용자 정보를 조회하는 함수
async function getUserFromDbByIP(ip: string): Promise<any> {
  try {
    const response = await fetch(`${process.env.FAST_API_URL}/users/ip`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ ip }),
    });

    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    return await response.json();
  } catch (error) {
    console.error("Error fetching user by IP:", error);
    return null;
  }
}

