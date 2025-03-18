import NextAuth from "next-auth";
import { authConfig } from "./auth.config";

export const { handlers, signIn, signOut, auth } = NextAuth({ 
  debug: process.env.NODE_ENV !== "production",
  trustHost: true,
  ...authConfig,
});
