// import { ApiRouteFetch, createRequestOptions } from "@/lib/hooks/server/api-route-fetch";

import { createRequestConfig, ApiRouteAxios } from "@/lib/hooks/server/api-route-fetch";

export const dynamic = "force-dynamic"; // defaults to auto

export async function POST(request: Request) {
  const requestBody = await request.json();
  const postData = {
    user_id: requestBody.userId,
    chat_id: requestBody.chatId,
  }

  const apiUrl = `${process.env.FAST_API_URL}/chatting/support`;
  // const options = await createRequestOptions("POST", postData);

  const config = await createRequestConfig("POST", postData);
  const response = await ApiRouteAxios(apiUrl, config);

  return response

  // return ApiRouteFetch(apiUrl, options);
}
