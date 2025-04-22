"use client";

import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { signIn } from "next-auth/react";
import Link from "next/link";
import { useEffect } from "react";
import { ReactTyped } from "react-typed";
import GuideTour from "../cmm/guide-tour";
import { guideTourStore } from "@/store/guide-tour-store";

// 컴포넌트 Props 타입 정의
interface IpConfirmProps {
  user: UsersType;          // 사용자 정보
  directLink?: string;      // 리다이렉션 링크
}


// TODO 코드 투어 - [로그인] 120. 사용자 확인 컴포넌트
/**
 * IP 기반 사용자 확인 컴포넌트
 * @param user - 사용자 정보
 * @param directLink - 리다이렉션 링크
 * @returns IP 확인 UI
 */
export function IpConfirm({ user, directLink }: Readonly<IpConfirmProps>) {
  // 가이드 투어 스텝 가져오기
  const { getGuideTourSteps } = guideTourStore();

  // 리다이렉션 링크 기본값 설정
  const redirectLink = directLink && directLink !== "undefined" 
    ? directLink 
    : "/my/request";

  // 사용자 정보가 없는 경우 홈으로 리다이렉션
  useEffect(() => {
    if (!user.user_nm) {
      window.location.href = "/home";
    }
  }, [user]);

  return (
    <div className="flex w-full h-screen justify-center items-center bg-nice-bg">
      {/* 가이드 투어 컴포넌트 */}
      <GuideTour 
        location="login" 
        userInfo={user}  
        run={true} 
        steps={getGuideTourSteps("login")} 
      />
      
      <Card className="w-[460px] p-8 border-none bg-transparent">
        <CardHeader>
          {user.user_nm ? (
            // 사용자 정보가 있는 경우 환영 메시지
            <CardTitle id="hello" className="flex justify-center w-full text-white">
              <ReactTyped
                strings={[
                  "안녕하세요!",
                  `${user.dept_nm} ${user.user_nm}님 반갑습니다 :)`,
                ]}
                typeSpeed={60}
                backSpeed={40}
              />
            </CardTitle>
          ) : (
            // 사용자 정보가 없는 경우 새로고침 안내
            <CardTitle className="flex justify-center w-full text-white">
              사용자 확인을 위해 새로고침 버튼을 눌러주세요.
            </CardTitle>
          )}
        </CardHeader>

        <CardContent className="pb-0 font-bold">
          {(user.user_nm ?? "").trim() !== "" ? (
            // 사용자 정보가 있는 경우 로그인 버튼 표시
            <div className="w-full flex flex-col gap-4">
              {/* 로그인 버튼 */}
              <Button
                id="login-button"
                onClick={() =>
                  signIn("credentials", {
                    nextUrl: redirectLink,
                    redirect: true,
                    redirectTo: redirectLink,
                  })
                }
                className="mt-4 w-full h-16 text-lg bg-nice-blue-500 rounded-full hover:bg-nice-blue-700 shadow-md shadow-nice-gray-9ea/30 cursor-pointer"
              >
                {user.dept_nm} {user.user_nm} 계정으로 로그인
              </Button>
              
              {/* 다른 사용자 확인 버튼 */}
              <Link href="/confirm">
                <Button
                  id="iamnot"
                  className="w-full h-16 text-lg bg-white text-nice-bg hover:bg-nice-bg hover:text-white rounded-full shadow-md shadow-nice-gray-9ea/30 cursor-pointer"
                >
                  제가 아닙니다
                </Button>
              </Link>
            </div>
          ) : (
            // 사용자 정보가 없는 경우 새로고침 버튼 표시
            <div className="grid w-full items-center gap-4 mt-8">
              <Link href="/home">
                <Button className="w-full h-16 bg-nice-blue-500 rounded-full">
                  새로고침
                </Button>
              </Link>
            </div>
          )}
        </CardContent>
        <CardFooter></CardFooter>
      </Card>
    </div>
  );
}
