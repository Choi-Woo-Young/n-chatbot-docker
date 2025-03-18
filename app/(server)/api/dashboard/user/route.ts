import { auth } from "@/auth";
import { ApiRouteAxios, createRequestConfig } from "@/lib/hooks/server/api-route-fetch";

export const dynamic = "force-dynamic"; // defaults to auto

export async function GET(request: Request) {
  const user = await auth();
  const apiUrl = `${process.env.FAST_API_URL}/dashboard/current?user_id=${user?.user.user_id}`
  const config = await createRequestConfig("GET");
  const response = await ApiRouteAxios(apiUrl, config);
  return response
}
