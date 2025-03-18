import { UserDashboard } from "@/components/molecules/dashboard/user-dashboard";
import { Metadata } from "next";

export const metadata: Metadata = {
  title: "업무지원챗봇",
  description: "N-Chatbot",
};

export default function UserDashboardPage() {
  return <UserDashboard />;
}
