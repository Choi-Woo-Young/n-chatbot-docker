import {
  createRequestConfig,
  ApiRouteAxios,
} from "@/lib/hooks/server/api-route-fetch";

import fs from "fs";
import path from "path";

export const dynamic = "force-dynamic"; // defaults to auto

export async function POST(request: Request) {
  const requestBody = await request.json();

  try {
    const { imageData, folderName, fileName } = requestBody;

    // 이미지 데이터에서 base64 데이터 추출
    const base64Data = imageData.replace(/^data:image\/png;base64,/, "");

    // 저장할 디렉토리 경로 설정
    const dir = path.join(process.cwd(), "public", "feedback", folderName);

    // 디렉토리가 존재하지 않으면 생성
    if (!fs.existsSync(dir)) {
      fs.mkdirSync(dir, { recursive: true });
    }

    // 이미지 파일 경로 설정
    const filePath = path.join(dir, fileName);

    // 파일 저장
    fs.writeFileSync(filePath, base64Data, "base64");

    // 저장한 파일 경로를 requestBody에 추가
    const fastApiRequestBody = {
      contents: requestBody.contents,
      image_path: `/feedback/${folderName}/${fileName}`, // 상대 경로 저장
      created_by: requestBody.user_id,
    };

    // FastAPI로 전송
    const apiUrl = `${process.env.FAST_API_URL}/feedback/add`;

    const config = await createRequestConfig("POST", fastApiRequestBody);
    const response = await ApiRouteAxios(apiUrl, config);

    return response;
  } catch (error) {
    console.error("피드백 저장 중 오류 발생:", error);
    return new Response(
      JSON.stringify({ error: "피드백 저장 중 오류가 발생했습니다." }),
      {
        status: 500,
        headers: { "Content-Type": "application/json" },
      }
    );
  }
}
