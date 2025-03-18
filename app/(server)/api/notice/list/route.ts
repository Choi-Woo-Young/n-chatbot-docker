import { auth } from "@/auth";
import {
  ApiRouteAxios,
  createRequestConfig,
} from "@/lib/hooks/server/api-route-fetch";

export const dynamic = "force-dynamic"; // defaults to auto

export async function GET(request: Request) {
  const url = new URL(request.url);
  const is_current_notice = url.searchParams.get("is_current_notice");

  const apiUrl = `${process.env.FAST_API_URL}/notice/list?is_current_notice=${is_current_notice}`;
  const config = await createRequestConfig("GET");
  const response = await ApiRouteAxios(apiUrl, config);
  return response;
}
