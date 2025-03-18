// import { ApiRouteFetch, createRequestOptions } from "@/lib/hooks/server/api-route-fetch";
import { auth } from "@/auth";
import { ApiRouteAxios, createRequestConfig } from "@/lib/hooks/server/api-route-fetch";

export const dynamic = "force-dynamic"; // defaults to auto

export async function GET(request: Request) {
  const user = await auth();
  const url = new URL(request.url);
  const chatId = url.searchParams.get("chatId");

  const apiUrl = `${process.env.FAST_API_URL}/chatroom/get?chat_id=${chatId}&user_id=${user?.user.user_id}`
  // const options = await createRequestOptions("GET");

  const config = await createRequestConfig("GET");
  const response = await ApiRouteAxios(apiUrl, config);

  return response
  // return ApiRouteFetch(apiUrl, options);
}
