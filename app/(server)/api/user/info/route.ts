import { auth } from "@/auth";
import {
  ApiRouteAxios,
  createRequestConfig,
} from "@/lib/hooks/server/api-route-fetch";

export const dynamic = "force-dynamic"; // defaults to auto

export async function GET(request: Request) {
  const user = await auth();

  const url = new URL(request.url);
  const userId = url.searchParams.get("userId");

  const apiUrl = `${process.env.FAST_API_URL}/users/${
    userId ?? user?.user.user_id
  }`;
  const config = await createRequestConfig("GET");
  const response = await ApiRouteAxios(apiUrl, config);
  return response;
}
