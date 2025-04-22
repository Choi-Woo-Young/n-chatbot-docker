// 동적 라우팅 설정 - 모든 요청에 대해 새로 처리
export const dynamic = "force-dynamic";

// TODO 코드 투어 - [봇과채팅](프론트) 160. 봇 채팅 API route (스트리밍 응답 처리)
/**
 * 채팅 API 엔드포인트
 * - FastAPI 서버로부터 스트리밍 응답을 받아 클라이언트에 전달
 * - 실시간으로 응답을 처리하여 사용자 경험 향상
 */
export async function POST(request: Request) {
  try {
    // 요청 본문 파싱
    const requestBody = await request.json();

    // FastAPI 서버로 요청 전송
    const apiResponse = await fetch(
      `${process.env.FAST_API_URL}/chatbot/ask`,
      {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(requestBody),
        cache: "no-cache", // 캐시 비활성화
      }
    );

    // 응답 본문이 없는 경우 에러 처리
    if (!apiResponse.body) {
      return new Response("API 응답 본문이 없습니다", { status: 500 });
    }

    // 스트리밍을 위한 TransformStream 생성
    //** - readable: 클라이언트로 전송될 스트림
    //**  - writable: API 응답을 쓰기 위한 스트림
    const { readable, writable } = new TransformStream();

    // 스트림 리더와 라이터 생성
    const reader = apiResponse.body.getReader(); 
    const writer = writable.getWriter(); 
    const decoder = new TextDecoder(); 

    // 스트리밍 데이터 처리 함수
    const processStream = async () => {
      try {
        while (true) {
          // API 응답에서 데이터 청크 읽기
          const { done, value } = await reader.read();
          
          // 스트림이 종료된 경우
          if (done) {
            await writer.close();
            break;
          }

          // 바이너리 데이터를 텍스트로 디코딩
          const text = decoder.decode(value);
          
          // **디코딩된 데이터를 TransformStream으로 전달
          await writer.write(value);
        }
      } catch (error) {
        console.error("스트리밍 처리 중 오류 발생:", error);
        await writer.abort(error);
      }
    }

    // 스트리밍 처리 시작
    processStream();

    // **클라이언트에 스트리밍 응답 반환
    return new Response(readable, {
      headers: {
        "Content-Type": "text/event-stream", // SSE(Server-Sent Events) 형식
        "Cache-Control": "no-cache", // 캐시 비활성화
        "Connection": "keep-alive", // 연결 유지
      },
    });

  } catch (error) {
    // 에러 처리
    console.error("채팅 API 처리 중 오류 발생:", error);
    return new Response("서버 오류가 발생했습니다", { status: 500 });
  }
}
