// import { ApiRouteFetch, createRequestOptions } from "@/lib/hooks/server/api-route-fetch";

import { createRequestConfig, ApiRouteAxios } from "@/lib/hooks/server/api-route-fetch";

export const dynamic = "force-dynamic"; // defaults to auto

export async function POST(request: Request) {
  const requestBody = await request.json();

  const apiUrl = `${process.env.FAST_API_URL}/chatroom/message/register`;
  // const options = await createRequestOptions("POST", requestBody);

  const config = await createRequestConfig("POST", requestBody);
  const response = await ApiRouteAxios(apiUrl, config);

  return response
  // return ApiRouteFetch(apiUrl, options);
}