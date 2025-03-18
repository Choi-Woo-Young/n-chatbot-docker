"use client";
import { useChatroomSupportListCount } from "@/lib/hooks/client/use-chatroom-fetcher";
import { cn } from "@/lib/utils";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { useEffect, useState } from "react";

export default interface MenuItemProps {
  icon: React.ReactNode;
  title: string;
  href: string;
}

export function MenuItem({ icon, title, href }: MenuItemProps) {
  const pathname = usePathname();
  return (
    <Link
      href={href}
      className={cn(
        "px-4 py-3 rounded-xl flex items-center hover:bg-nice-blue-300 hover:text-white",
        {
          "bg-nice-blue-500 text-white": pathname === href,
          "text-nice-gray-737": pathname !== href,
        }
      )}
    >
      <div className="text-sm font-medium flex gap-x-2 items-center">
        <span> {icon} </span>
        <span> {title} </span>
      </div>
      {href === "/waiting" ? <WaitingCount /> : null}
    </Link>
  );
}

const WaitingCount = () => {
  const { data: count, isLoading } = useChatroomSupportListCount("CRSTT030");

  if (isLoading) {
    return null;
  }

  // count가 0 이상일 때만 렌더링
  if (count > 0) {
    return (
      <div className="ml-2 bg-red-500 text-white text-xs font-semibold w-fit h-fit px-2 py-0.5 flex items-center justify-center rounded-full">
        {count}
      </div>
    );
  }

  return null;
};
