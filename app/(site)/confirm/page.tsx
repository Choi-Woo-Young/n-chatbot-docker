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

export const metadata: Metadata = {
  title: "업무지원챗봇",
  description: "N-Chatbot App",
};

export default async function ConfirmPage() {
  return (
    <div className="flex w-full h-screen justify-center items-center bg-nice-bg">
      <Card className="w-[520px] py-8 px-6 border-none shadow-lg rounded-3xl bg-white">
        <CardHeader>
          <CardTitle className="flex justify-center w-full font-bold">
            서비스 이용 안내
          </CardTitle>
        </CardHeader>
        <CardContent>
          <Label className="text-xl text-center leading-8">
            <span className="font-bold">
              업무지원 챗봇 서비스는{" "}
              <span className="text-nice-blue-900">본인PC</span>에서만 이용
              가능합니다.
            </span>
            <br />
            서비스는 내부 그룹웨어에 로그인 할 수 있는{" "}
            <span className="text-nice-blue-900 font-bold">
              업무망 VDI를 통해서만 접속 가능
            </span>
            하며, IP 기반으로 사용자 확인이 이루어집니다.
            <br />
            서비스 이용에 문제가 있으시면,{" "}
            <span className="font-bold">서비스운영실</span>로 문의해주세요.
          </Label>
        </CardContent>
        {/* <CardFooter className="w-full">
          <Link href="/home" className="w-full block">
            <Button className="mt-4 w-full h-16 text-lg bg-nice-blue-500 rounded-full hover:bg-nice-blue-700">
              사용자 정보 확인 페이지로 이동
            </Button>
          </Link>
        </CardFooter> */}
      </Card>
    </div>
  );
}
