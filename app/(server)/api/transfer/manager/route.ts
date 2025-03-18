import { auth } from "@/auth";
import {
  createRequestConfig,
  ApiRouteAxios,
} from "@/lib/hooks/server/api-route-fetch";
// import { ApiRouteFetch, createRequestOptions } from "@/lib/hooks/server/api-route-fetch";

export const dynamic = "force-dynamic"; // defaults to auto

export async function GET(request: Request) {
  const session = await auth();
  const userId = session?.user.user_id;
  const url = new URL(request.url);
  const query = url.searchParams.toString();

  const apiUrl = `${process.env.FAST_API_URL}/transfer/manager/list?${query}&user_id=${userId}`;
  // const options = await createRequestOptions("GET");

  const config = await createRequestConfig("GET");
  const response = await ApiRouteAxios(apiUrl, config);

  return response;
  // return ApiRouteFetch(apiUrl, options);
}

export async function POST(request: Request) {
  const session = await auth();
  const userId = session?.user.user_id;

  const requestBody = await request.json();
  const postData = {
    user_id: userId,
    chat_id: requestBody.chatId,
    mgr_user_id: requestBody.mgrUserId,
  };

  const apiUrl = `${process.env.FAST_API_URL}/transfer/manager`;
  // const options = await createRequestOptions("POST", postData);

  const config = await createRequestConfig("POST", postData);
  const response = await ApiRouteAxios(apiUrl, config);

  return response;
  // return ApiRouteFetch(apiUrl, options);
}
