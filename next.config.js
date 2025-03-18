/** @type {import('next').NextConfig} */
const nextConfig = {
  eslint: {
    ignoreDuringBuilds: true,
  },
  reactStrictMode: false,
  images: {
    //domains: ['arzvalue.com','images.unsplash.com'],
    remotePatterns: [
      { protocol: "http", hostname: "**.niceinfo.co(m|.kr)", pathname: "**" },
      { protocol: "https", hostname: "**.niceinfo.co(m|.kr)", pathname: "**" },
      { protocol: "http", hostname: "127.0.0.1", pathname: "**" },
      { protocol: "https", hostname: "png.pngtree.com", pathname: "**" },
    ],
  },
  rewrites: async () => {
    return [
      // {
      //   source: "/fapi/:path*",
      //   destination:
      //     process.env.NODE_ENV === "development"
      //       ? "http://127.0.0.1:8000/:path*"
      //       : "http://127.0.0.1:8000/:path*", //"/api/",
      // },
      {
        source: "/",
        destination: "/home",
      },
      {
        source: "/docs",
        destination:
          process.env.NODE_ENV === "development"
            ? "http://127.0.0.1:8019/docs"
            : process.env.NODE_ENV === "test"
            ? "http://10.98.27.163:8019/docs"
            : "/api/docs",
      },
      {
        source: "/openapi.json",
        destination:
          process.env.NODE_ENV === "development"
            ? "http://127.0.0.1:8019/openapi.json"
            : process.env.NODE_ENV === "test"
            ? "http://10.98.27.163:8019/openapi.json"
            : "/api/openapi.json",
      },
    ];
  },

  redirects: async () => {
    return [
      {
        source: "/",
        destination: "/sign-in",
        permanent: true,
      },
    ];
  },
  headers: async () => {
    return [
      {
        // 모든 페이지에 대해 CSP 적용
        source: "/(.*)",
        headers: [
          {
            key: "Content-Security-Policy",
            value: `
               default-src 'self';
               script-src 'self' 'unsafe-inline' 'unsafe-eval' http://matomo.niceinfo.co.kr:8081 https://matomo.niceinfo.co.kr:8081;
               style-src 'self' 'unsafe-inline';
               img-src 'self' data:;
               connect-src 'self' https://nchat.niceinfo.co.kr http://localhost:8019 wss://nchat.niceinfo.co.kr ws://localhost:8019 http://matomo.niceinfo.co.kr:8081 https://matomo.niceinfo.co.kr:8081 http://10.98.27.163:3019;
               font-src 'self';
               frame-src 'none';
             `
              .replace(/\s{2,}/g, " ")
              .trim(),
          },
        ],
      },
    ];
  },

  webpack(config, { dev }) {
    if (!dev) {
      config.devtool = false; // 프로덕션 환경에서 소스맵 비활성화
    }
    return config;
  },
};

module.exports = nextConfig;
