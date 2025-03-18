import axios, { AxiosRequestConfig, AxiosResponse } from "axios";
import { auth } from "@/auth";

export async function createRequestConfig(
  method: string,
  body?: any
): Promise<AxiosRequestConfig> {
  const user = await auth();
  console.log("[next-back] user >>> ", user?.user.user_id);

  const config: AxiosRequestConfig = {
    method,
    headers: {
      "Content-Type": "application/json",
      Authorization: `Bearer ${user?.user.user_id}`,
    },
  };

  if (body) {
    console.log("[next-back] body >>> ", body);
    config.data = body;
  }

  return config;
}

export async function axiosFromApi(
  url: string,
  config: AxiosRequestConfig
): Promise<AxiosResponse> {
  const response = await axios(url, config);

  if (response.status < 200 || response.status >= 300) {
    throw new Error(`API request failed with status ${response.status}`);
  }

  return response;
}

export async function ApiRouteAxios(
  apiUrl: string,
  config: AxiosRequestConfig
): Promise<Response> {
  try {
    const apiResponse = await axiosFromApi(apiUrl, config);
    const responseBody = apiResponse.data;

    return new Response(JSON.stringify(responseBody), {
      headers: {
        "Content-Type": "application/json",
      },
    });
  } catch (error: any) {
    const errorDetail = error.response?.data?.detail || "Internal Server Error";

    return new Response(JSON.stringify({ message: errorDetail }), {
      status: error.response?.status || 500,
      headers: {
        "Content-Type": "application/json",
      },
    });
  }
}

// import { auth } from "@/auth"

// export async function createRequestOptions(method: string, body?: any): Promise<RequestInit> {

//     const user = await auth()
//     console.log('[next-back] user >>> ', user?.user.user_id)

//     const options: RequestInit = {
//       method,
//       headers: {
//         "Content-Type": "application/json",
//         "Authorization": `Bearer ${user?.user.user_id}`,
//       },
//       cache: "no-cache",
//     }

//     if (body) {
//       console.log('[next-back] body >>> ', body)
//       options.body = JSON.stringify(body)
//     }

//     return options
//   }

//   export async function fetchFromApi(url: string, options: RequestInit) {
//     const response = await fetch(url, options)
//     console.log('[next-back] responseBody >>> ', response)

//     if (!response.ok) {
//       throw new Error(`API request failed with status ${response.status}`)
//     }

//     return response
//   }

//   export async function ApiRouteFetch(
//     apiUrl: string,
//     options: RequestInit
//   ): Promise<Response> {
//     try {
//       const apiResponse = await fetchFromApi(apiUrl, options)
//       const responseBody = await apiResponse.json()

//       return new Response(JSON.stringify(responseBody), {
//         headers: {
//           "Content-Type": "application/json",
//         },
//       })
//     } catch (error) {
//       console.error('ApiRouteFetch >> ', error)
//       return new Response("Internal Server Error", { status: 500 })
//     }
//   }
