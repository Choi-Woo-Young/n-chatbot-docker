import { auth } from "@/auth";
import {
  createRequestConfig,
  ApiRouteAxios,
} from "@/lib/hooks/server/api-route-fetch";
export const dynamic = "force-dynamic"; // defaults to auto


export async function POST(request: Request) {
  const session = await auth();
  console.log("session >>> ", session);
  const userId = session?.user.user_id;

  const requestBody = await request.json();
  const postData = {
    user_id: requestBody.userId ?? userId ,
    guide_tour_json: requestBody.guideTourJson,
  };

  console.log("postData >>> ", postData);

if(postData.user_id == undefined || postData.user_id == null){
  throw new Error("user_id is required");
}

  const apiUrl = `${process.env.FAST_API_URL}/users/guide-tour-info`;
  const config = await createRequestConfig("POST", postData);
  const response = await ApiRouteAxios(apiUrl, config);

  return response;
}
