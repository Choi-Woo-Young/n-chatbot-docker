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
import { Metadata } from "next";
import Link from "next/link";
import { useRouter, usePathname } from "next/navigation";

export const metadata: Metadata = {
  title: "업무지원챗봇",
  description: "N-Chatbot App",
};

export default async function NotFound() {
  const router = useRouter();
  const pathname = usePathname();
  return (
    <div className="flex w-full h-screen justify-center items-center bg-nice-bg">
      <Card className="w-[460px] p-8 border-none shadow-lg rounded-3xl bg-white">
        <CardHeader>
          <CardTitle className="flex justify-center w-full">
            페이지를 찾을 수 없습니다.
          </CardTitle>
        </CardHeader>
        <CardContent>
          <Label className="text-xl text-center">
            해당 페이지를 찾을 수 없습니다. 서비스 이용에 문제가 있으신 경우{" "}
            <span className="text-nice-blue-900">서비스운영실</span>로
            문의해주세요.
          </Label>
        </CardContent>
        <CardFooter className="w-full">
          <Button
            className="mt-4 w-full h-16 text-lg bg-nice-blue-500 rounded-full hover:bg-nice-blue-700"
            onClick={() => {
              router.back();
            }}
          >
            이전 페이지로 이동
          </Button>
        </CardFooter>
      </Card>
    </div>
  );
}
