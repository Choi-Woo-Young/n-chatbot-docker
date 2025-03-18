import NextAuth from "next-auth";
import { UserType } from "./user";

declare module "next-auth" {
  /**
   * Returned by `useSession`, `getSession` and received as a prop on the `SessionProvider` React Context
   */
  interface User extends UserType {}

  //interface User extends UserType {}

  // interface Data {
  //   userId: number
  //   accountType: string
  //   joinStatus: string
  //   profileUrl: string
  //   usrNm: string
  //   authToken: string
  //   email: string
  // }

  // interface Token {
  //   accessToken: string
  //   refreshToken: string
  // }

  interface Session extends DefaultSession {
    user?: UserType;
  }
}

declare module "next-auth/jwt" {
  interface JWT {
    status: string;
    message?: string;
    data: Data;
  }
}
