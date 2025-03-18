import NextAuth from "next-auth";
import { authConfig } from "./auth.config";
import { NextRequest, NextResponse } from "next/server";
import { auth } from "@/auth";
import { headers } from "next/headers";

export default NextAuth(authConfig).auth;

export async function middleware(request: NextRequest) {
  console.log("request.nextUrl.pathname:" + request.nextUrl.pathname);
  const session = await auth();
  if (request.nextUrl.pathname.startsWith("/confirm")) {
    return NextResponse.next();
  } else if (request.nextUrl.pathname.startsWith("/undefined")) {
    const url = request.nextUrl.clone();
    const homeUrl = new URL("/my/request", url.origin);
    return NextResponse.redirect(homeUrl);
  } else if (!session || !session.user) {
    console.log("call middleware - No session.user");
    const url = request.nextUrl.clone();
    const signInUrl = new URL("/sign-in", url.origin);
    let user = null;
    const header = headers();
    const ip = (header.get("x-forwarded-for") ?? "127.0.0.1").split(",")[0];
    user = await getUserFromDbByIP(ip);
    if (user) {
      signInUrl.searchParams.set(
        "info",
        encodeURIComponent(JSON.stringify(user))
      );
      return NextResponse.redirect(signInUrl);
    } else {
      return NextResponse.redirect(new URL("/confirm", url.origin));
    }
  } else {
    const sessionJson = JSON.stringify(session.user);
    const user: UsersType = JSON.parse(sessionJson);
    console.log("call middleware user -" + JSON.stringify(user));
    return NextResponse.next();
  }
}

//You can also use a regex to match multiple routes or you can negate certain routes in order to protect all remaining routes.
// The following example avoids running the middleware on paths such as the favicon or static images.
export const config = {
  matcher: [
    "/((?!api|_next/static|_next/image|favicon.ico|sign-in|direct-link).*)",
  ],
};

async function getUserFromDbByIP(ip: string): Promise<any> {
  console.log("getUserFromDbByIP > ip - " + ip);
  const res = await fetch(`${process.env.FAST_API_URL}/users/ip`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({
      ip: ip,
    }),
  });

  const user: UsersType = await res.json();

  if (res.ok) {
    console.log("getUserFromDbByIP > user:", user);
    return user;
  }
  return null;
}
