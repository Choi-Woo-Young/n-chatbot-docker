export const dynamic = "force-dynamic"; // defaults to auto

export async function POST(request: Request) {
  //console.log("[server] request.body", request.json());
  const requestBody = await request.json();

  const apiResponse = await fetch(
    `${process.env.FAST_API_URL}/chatbot/ask`,
    {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(requestBody),
      cache: "no-cache",
    }
  );

  //console.log("[server] apiResponse", apiResponse);
  if (!apiResponse.body) {
    return new Response("No response body from API", { status: 500 });
  }

  const { readable, writable } = new TransformStream();
  //apiResponse.body.pipeTo(writable);

  // Create a reader from the API response body
  const reader = apiResponse.body.getReader();
  const writer = writable.getWriter();
  const decoder = new TextDecoder();

  // Read the data from the API response and write it to the TransformStream
  async function read() {
    while (true) {
      const { done, value } = await reader.read();
      if (done) {
        writer.close();
        break;
      }
      const text = decoder.decode(value);
      //console.log("Received chunk: ", text); // Log the received chunk
      writer.write(value);
    }
  }

  read();

  return new Response(readable, {
    headers: {
      "Content-Type": "text/event-stream",
    },
  });
}
