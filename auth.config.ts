import { NextAuthConfig } from "next-auth";
import { headers } from "next/headers";
import Credentials from "next-auth/providers/credentials";
import { ZodError } from "zod";
import { signInSchema } from "./lib/zod";

export const authConfig = {
  providers: [
    Credentials({
      // You can specify which fields should be submitted, by adding keys to the `credentials` object.
      // e.g. domain, username, password, 2FA token, etc.
      credentials: {
        email: { label: "email", type: "email" },
        password: { label: "password", type: "password" },
      },
      authorize: async (credentials, request: Request) => {
        // IP 주소 가져오기
        const header = headers();
        const ip = (header.get("x-forwarded-for") ?? "127.0.0.1").split(",")[0];

        try {
          let user = null;
          // //zod signInSchema를 이용해 값 검증
          // const { email, password } = await signInSchema.parseAsync(
          //   credentials
          // );
          // //const pwHash = saltAndHashPassword(password)
          // user = await getUserFromDb(email, password);
          // console.log("getUserFromDb > user:" + JSON.stringify(user));

          user = await getUserFromDbByIP(ip);
          console.log("getUserFromDbByIP > user:" + JSON.stringify(user));

          if (!user) {
            throw new Error("User not found.");
          }

          return user;
        } catch (error) {
          if (error instanceof ZodError) {
            return null;
          }
        }
      },
    }),
  ],
  callbacks: {
    async authorized({ auth, request: { nextUrl, ip } }) {
      console.log("authorized callback -ip:" + ip);
      console.log("authorized callback -nextUrl:" + nextUrl);
      console.log("authorized callback:" + JSON.stringify(auth?.user));
      const isLoggedIn = !!auth?.user;
      const isOnProtected = !nextUrl.pathname.startsWith("/sign-in"); // 로그인 페이지를 제외한 모든 페이지 보호

      if (isOnProtected) {
        if (isLoggedIn) return true;
        return false; // Redirect unauthenticated users to login page
      } else if (isLoggedIn) {
        // return true
        return Response.redirect(new URL("/", nextUrl));
      }
      return true;
    },
    jwt({ token, user, account }) {
      if (user) {
        console.log("jwt > user:" + JSON.stringify(user));
        token.id = user.id;
        token.email = user.email;
        token.name = user.name;
        token.picture = user.image;
        token.sub = JSON.stringify(user);
        console.log("jwt > token:" + JSON.stringify(token));
        console.log("jwt > account:" + JSON.stringify(account));
      }
      return token;
    },
    session({ session, token, user }) {
      //console.log("token:" + JSON.stringify(token));
      const usr: UsersType = JSON.parse(token.sub ?? "");
      session.user = usr;
      return session;
    },
  },
  pages: {
    signIn: "/confirm",
    // signIn: "/sign-in",
  },

  // 세션 만료 시간 설정 (1시간)
  session: {
    maxAge: 60 * 60, // 1시간 (초 단위)
  },
  // JWT 만료 시간 설정 (1시간)
  jwt: {
    maxAge: 60 * 60, // 1시간 (초 단위)
  },

} satisfies NextAuthConfig;

async function getUserFromDb(email: string, password: string): Promise<any> {
  //console.log("getUserFromDb > email:" + email + " password:" + password);
  const res = await fetch(`${process.env.FAST_API_URL}/users/sign-in`, {
    method: "POST",
    body: JSON.stringify({
      email: email,
      password: password,
      // password: Buffer.from(credentials!.password).toString('base64'),
    }),
    headers: { "Content-Type": "application/json" },
  });

  const user: UsersType = await res.json();

  if (res.ok) {
    //getUserFromDb > user:{"reg_dttm":null,"mod_dttm":null,"reg_usr_id":null,"mod_usr_id":null,"use_yn":null,"id":1,"name":"최우영","email":"wychoi@niceinfo.co.kr","emailVerified":null,"image":null,"password":"1234"}
    console.log("getUserFromDb > user:", user);
    return user;
  }
  return null;
}

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
