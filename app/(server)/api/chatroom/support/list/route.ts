// import { ApiRouteFetch, createRequestOptions } from "@/lib/hooks/server/api-route-fetch";

import { auth } from "@/auth";
import {
  createRequestConfig,
  ApiRouteAxios,
} from "@/lib/hooks/server/api-route-fetch";

export const dynamic = "force-dynamic"; // defaults to auto

export async function GET(request: Request) {
  const user = await auth();

  const url = new URL(request.url);
  const query = url.searchParams.toString();

  const apiUrl = `${process.env.FAST_API_URL}/chatroom/support/list?${query}&user_id=${user?.user.user_id}`;
  // const options = await createRequestOptions("GET");

  const config = await createRequestConfig("GET");
  const response = await ApiRouteAxios(apiUrl, config);

  return response;
  // return ApiRouteFetch(apiUrl, options);
}
