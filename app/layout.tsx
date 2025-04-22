import { auth } from "@/auth";
import { cn } from "@/lib/utils";
import type { Metadata } from "next";
import { Inter as FontSans } from "next/font/google";
import "./globals.css";
import { SessionProvider } from "./providers";
import { Toaster } from "@/components/ui/sonner";
import Script from "next/script";

const fontSans = FontSans({
  subsets: ["latin"],
  variable: "--font-sans",
});

export const metadata: Metadata = {
  title: "업무지원챗봇",
  description: "N-CHATBOT",
};

export default async function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  // const session = await auth();
  // console.log("RootLayout > session", session);
  return (
    <html lang="en" suppressHydrationWarning>
      <head />
      <body
        className={cn(
          "min-h-screen bg-background font-sans antialiased overflow-hidden",
          fontSans.variable
        )}
        // style={{fontSize: '1rem'}}
      >
        <Toaster />
        <SessionProvider>{children}</SessionProvider>
        {/* <SessionProvider session={session}>{children}</SessionProvider> */}
        {/* Matomo 트래킹 코드 */}
        <Script
          id="matomo-tracking"
          strategy="afterInteractive"
          dangerouslySetInnerHTML={{
          __html: `
            var _paq = window._paq = window._paq || [];
            _paq.push(['trackPageView']);
            _paq.push(['enableLinkTracking']);
            (function() {
              var u="//matomo.niceinfo.co.kr:8081/matomo/";
              _paq.push(['setTrackerUrl', u+'matomo.php']);
              _paq.push(['setSiteId', '3']);
              var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
              g.async=true; g.src=u+'matomo.js'; s.parentNode.insertBefore(g,s);
            })();
          `,
          }}
        />
      </body>
    </html>
  );
}
