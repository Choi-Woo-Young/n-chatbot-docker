import axios from "axios";
import { getSession, signOut } from "next-auth/react";

interface ApiResponse {
  data: any;
  message: string | null;
  status: string;
}

//Todo 오류 발생 시 예외처리 로직 필요

//GET
export const getFetcher = (url: string) =>
  axios.get(url).then((res) => res.data);

export const getSwrMutationFetcher = async (
  url: string,
  { arg }: { arg?: { body: any } }
) => {
  let uri = "";
  if (arg !== undefined && arg.body !== undefined) {
    uri =
      "?" +
      Object.keys(arg.body)
        .map((key) => `${key}=${arg.body[key]}`)
        .join("&");
  }
  console.log("getSwrMutationFetcher >>> ", url + uri);
  const response = await fetch(url + uri, {
    headers: {
      "Content-Type": "application/json",
    },
  });
  console.log("getSwrMutationFetcher responseData", JSON.stringify(response));
  return response.json();
  // if (!response.ok) {
  //   if (response.status === 403) signOut();
  //   else throw new Error("error");
  // }
  // const responseData: ApiResponse = await response.json();
  // console.log("getSwrMutationFetcher responseData", responseData.status);
  // if (responseData.status !== "success") {
  //   throw new Error("error");
  // }
  // return responseData.data;
};

//POST
export const postFetcher = async (
  url: string,
  { arg }: { arg: { body: any } }
) => {
  console.log(
    "postFetcher: url:" + url + " / arg.body:" + JSON.stringify(arg.body)
  );
  const response = await fetch(url, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(arg.body),
  });

  const responseData = await response.json();
  console.log(
    "==============================postFetcher response",
    responseData
  );
  return responseData;
  // const responseData: ApiResponse = await response.json();
  // console.log("postFetcher responseData", responseData.status);
  // if (responseData.status !== "success") {
  //   throw new Error("error");
  // }
  // return responseData.data;
};

export const postFetcherWithoutToken = async (
  url: string,
  { arg }: { arg?: { body?: any } }
) => {
  return fetch(url, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(arg),
  });
};

export const postFileFetcher = async (
  url: string,
  { arg }: { arg?: { body?: any } }
) => {
  console.log("postFileFetcher", url, arg);
  const session = await getSession();
  return axios
    .post(url, arg?.body, {
      headers: {
        "Content-Type": "multipart/form-data",
      },
    })
    .catch((e) => {
      console.log("postFileFetcher error", e);
    });
};

//PUT
export const putFetcher = async (url: string, body: any) => {
  const session = await getSession();
  const response = await fetch(url, {
    method: "PUT",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(body),
  });

  if (!response.ok) {
    throw new Error("error");
  }
  const responseData: ApiResponse = await response.json();
  if (responseData.status !== "SUCCESS") {
    throw new Error("error");
  }
  return responseData.data;
};
