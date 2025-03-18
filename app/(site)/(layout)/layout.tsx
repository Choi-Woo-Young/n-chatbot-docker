import { Sidebar } from "@/components/layouts/sidebar";
import { CaptureDivProvider } from "@/components/molecules/feedback/capture-div";
import FeedbackButton from "@/components/molecules/feedback/feedback-button";
import { FlowingText } from "@/components/molecules/notice/flowing-text";
import { ReactNode } from "react";
export default async function AuthLayout({
  children,
}: {
  children: ReactNode;
}) {
  
  const sidebar = await Sidebar({ className: "hidden lg:block" });

  return (
    <CaptureDivProvider>
      <div className="h-full bg-nice-bg">
        <div className="grid lg:grid-cols-7">
          <div className="col-span-1">{sidebar}</div>
          <div className="col-span-4 lg:col-span-6 h-full flex flex-col">
            <div className="h-12 bg-transparent flex justify-between px-9">
              <FlowingText />
              <FeedbackButton />
            </div>
            <div className="flex-1 px-4 pb-6 lg:px-8 bg-transparent">
              {children}
            </div>
          </div>
        </div>
      </div>
    </CaptureDivProvider>
  );
}
