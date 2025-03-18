import { IpConfirm } from "@/components/molecules/auth/ip_comfirm";
import { useServerSession } from "@/lib/hooks/server/use-server-session";
import { Metadata } from "next";
import { redirect, permanentRedirect } from "next/navigation";

export const metadata: Metadata = {
  title: "업무지원챗봇",
  description: "N-Chatbot App",
};

export default async function SignInPage({
  searchParams,
}: {
  searchParams: { info: string; dlink: string };
}) {
  const user = await useServerSession();

  let userInfo: UsersType = {};
  let directLink: string = "";

  if (searchParams.info) {
    try {
      userInfo = JSON.parse(decodeURIComponent(searchParams.info));
      directLink = decodeURIComponent(searchParams.dlink);
      console.log("userInfo", userInfo, "directLink", directLink);
    } catch (error) {
      console.error("Failed to parse user info:", error);
    }
  }

  if (directLink != "" && user) {
    console.log("useServerSession user >>> ", user);
    return redirect(directLink ?? "/my/request");
  }

  return <IpConfirm user={userInfo} directLink={directLink} />;
  // return <SignIn />;
}
