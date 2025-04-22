import { NextAuthConfig } from "next-auth";
import { headers } from "next/headers";
import Credentials from "next-auth/providers/credentials";
import { ZodError } from "zod";


// TODO 코드 투어 - [로그인] 130. 인증 처리
/**
 * NextAuth 설정
 * - IP 기반 인증
 * - JWT 토큰 관리
 * - 세션 관리
 */
export const authConfig = {
  // 인증 제공자 설정
  providers: [
    Credentials({
      // 자격 증명 필드 정의
      credentials: {
        email: { label: "email", type: "email" },
        password: { label: "password", type: "password" },
      },

      // 사용자 인증 로직
      authorize: async (credentials, request: Request) => {
        // IP 주소 추출
        const header = headers();
        const ip = (header.get("x-forwarded-for") ?? "127.0.0.1").split(",")[0];

        try {
          // IP로 사용자 정보 조회 >>
          const user = await getUserFromDbByIP(ip);
          console.log("IP 기반 사용자 조회 결과:", user);

          if (!user) {
            throw new Error("사용자를 찾을 수 없습니다.");
          }

          return user;
        } catch (error) {
          if (error instanceof ZodError) {
            return null;
          }
          throw error;
        }
      },
    }),
  ],

  // 콜백 함수 설정
  callbacks: {
    // 인증 상태 확인
    //모든 페이지 요청마다 호출, 사용자의 인증 상태 확인, 페이지 접근 권한 검사
    async authorized({ auth, request: { nextUrl } }) {
      const isLoggedIn = !!auth?.user;
      const isOnProtected = !nextUrl.pathname.startsWith("/sign-in");

      // 보호된 페이지 접근 시 인증 확인
      if (isOnProtected) {
        return isLoggedIn; //인증 통과 여부
      }
      
      // 로그인된 사용자가 로그인 페이지 접근 시 리다이렉션
      if (isLoggedIn) {
        return Response.redirect(new URL("/", nextUrl));
      }

      return true; //인증 통과
    },

    // JWT 토큰 생성 및 관리
    // 사용자 로그인 시, JWT 토큰 갱신 시, 토큰 만료 시 호출
    jwt({ token, user, account }) {
      if (user) {
        // 사용자 정보를 토큰에 포함
        token.id = user.id;
        token.email = user.email;
        token.name = user.name;
        token.picture = user.image;
        token.sub = JSON.stringify(user);
      }
      return token;
    },

    // 세션 관리
    // 클라이언트에서 세션 정보 요청 시, 페이지 새로고침 시, 세션 갱신 시 호출
    session({ session, token, user }) {
      // 토큰에서 사용자 정보 추출하여 세션에 저장
      const userData: UsersType = JSON.parse(token.sub ?? "");
      session.user = userData;
      return session;
    },
  },

  // 페이지 설정
  pages: {
    signIn: "/confirm", // 로그인 페이지 경로
  },

  // 세션 설정
  session: {
    maxAge: 60 * 60, // 1시간 (초 단위)
  },

  // JWT 설정
  jwt: {
    maxAge: 60 * 60, // 1시간 (초 단위)
  },

} satisfies NextAuthConfig;

/**
 * 이메일과 비밀번호로 사용자 조회
 * @param email - 사용자 이메일
 * @param password - 사용자 비밀번호
 * @returns 사용자 정보 또는 null
 */
async function getUserFromDb(email: string, password: string): Promise<any> {
  const response = await fetch(`${process.env.FAST_API_URL}/users/sign-in`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ email, password }),
  });

  if (!response.ok) {
    return null;
  }

  return await response.json();
}

/**
 * IP 주소로 사용자 조회
 * @param ip - 클라이언트 IP 주소
 * @returns 사용자 정보 또는 null
 */
async function getUserFromDbByIP(ip: string): Promise<any> {
  try {
    const response = await fetch(`${process.env.FAST_API_URL}/users/ip`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ ip }),
    });

    if (!response.ok) {
      return null;
    }

    return await response.json();
  } catch (error) {
    console.error("IP 기반 사용자 조회 실패:", error);
    return null;
  }
}
