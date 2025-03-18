"use client";

import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { Label } from "@/components/ui/label";
import { signIn } from "next-auth/react";
import Link from "next/link";
import { useEffect } from "react";
import { ReactTyped } from "react-typed";
import dynamic from "next/dynamic";
import GuideTour from "../cmm/guide-tour";
import { Placement } from "react-joyride";
import { guideTourStore } from "@/store/guide-tour-store";

interface IpConfirmProps {
  user: UsersType;
  directLink?: string;
}

export function IpConfirm({ user, directLink }: IpConfirmProps) {
  console.log("IpConfirm user >>> ", user);
  console.log("IpConfirm directLink >>> ", directLink);
  const { getGuideTourSteps } = guideTourStore();


  if (!directLink || directLink == undefined || directLink == "undefined") {
    directLink = "/my/request";
  }

  useEffect(() => {
    if (!user.user_nm) {
      window.location.href = "/home";
    }
  }, [user]);

  console.log("IpConfirm directLink >>> ", directLink);
  return (
    <div className="flex w-full h-screen justify-center items-center bg-nice-bg">
      <GuideTour location="login" userInfo={user}  run={true} steps={getGuideTourSteps("login")} />
      <Card className="w-[460px] p-8 border-none bg-transparent">
        <CardHeader>
          {user.user_nm ? (
            <CardTitle
              id="hello"
              className="flex justify-center w-full text-white"
            >
              <ReactTyped
                strings={[
                  "안녕하세요!",
                  `${user.dept_nm} ${user.user_nm}님 반갑습니다 :)`,
                ]}
                typeSpeed={60}
                backSpeed={40}
                // loop
              />
              {/* {user.dept_nm} {user.user_nm}님 반갑습니다. */}
            </CardTitle>
          ) : (
            <CardTitle className="flex justify-center w-full text-white">
              사용자 확인을 위해 새로고침 버튼을 눌러주세요.
            </CardTitle>
          )}
        </CardHeader>
        <CardContent className="pb-0 font-bold">
          {(user.user_nm ?? "").trim() !== "" ? (
            <div className="w-full flex flex-col gap-4">
              {/* <form
                action={async (formData) => {
                  "use server";
                  await signIn("credentials", {
                    // email: formData.get("email"),
                    // password: formData.get("password"),
                    // redirect: true,
                    // redirectTo: "/home",
                  });
                }}
              > */}
              {/* <Label className="text-xl text-center">
                  {user.dept_nm} {user.user_nm} {user.position_nm}님으로 로그인하시겠습니까?
                </Label> */}
              <Button
                id="login-button"
                onClick={() =>
                  signIn("credentials", {
                    nextUrl: directLink ?? "/my/request",
                    redirect: true,
                    redirectTo: directLink ?? "/my/request",
                  })
                }
                className="mt-4 w-full h-16 text-lg bg-nice-blue-500 rounded-full hover:bg-nice-blue-700 shadow-md shadow-nice-gray-9ea/30 cursor-pointer"
              >
                {user.dept_nm} {user.user_nm} 계정으로 로그인
              </Button>
              {/* </form> */}
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
