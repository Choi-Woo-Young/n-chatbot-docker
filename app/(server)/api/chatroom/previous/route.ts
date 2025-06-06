// import { ApiRouteFetch, createRequestOptions } from "@/lib/hooks/server/api-route-fetch";
import {
  ApiRouteAxios,
  createRequestConfig,
} from "@/lib/hooks/server/api-route-fetch";

export const dynamic = "force-dynamic"; // defaults to auto

export async function GET(request: Request) {
  const url = new URL(request.url);
  const chatId = url.searchParams.get("chatId");

  const apiUrl = `${process.env.FAST_API_URL}/chatroom/previous?chat_id=${chatId}`;
  // const options = await createRequestOptions("GET");

  const config = await createRequestConfig("GET");
  const response = await ApiRouteAxios(apiUrl, config);

  return response;
  // return ApiRouteFetch(apiUrl, options);
}
