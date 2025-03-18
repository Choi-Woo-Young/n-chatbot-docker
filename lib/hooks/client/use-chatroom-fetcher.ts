import useSWRMutation from "swr/mutation";
import { getFetcher, getSwrMutationFetcher, postFetcher } from "./fetcher";
import useSWR from "swr";
import axios from "axios";

export function useChatroomList() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/chatroom/list`,
    getSwrMutationFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}

export function useChatroomSupportList() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/chatroom/support/list`,
    getSwrMutationFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}

export function useChatroomSupportListCount(state_cds: string) {
  const { data, error, isLoading, mutate } = useSWR(
    `${process.env.NEXT_PUBLIC_API_URL}/api/chatroom/support/list/count?state_cds=${state_cds}`,
    getFetcher,
    { refreshInterval: 10000 }
  );

  return {
    data,
    error,
    isLoading,
    mutate,
  };
}

export function useChatroomRegister() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/chatroom/register`,
    postFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}

export function useChatroom() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/chatroom/get`,
    getSwrMutationFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}

export function usePreviousChatroom() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/chatroom/previous`,
    getSwrMutationFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}

export function useChatroomMessageList() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/chatroom/message/list`,
    getSwrMutationFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}

export function useChatMessageRegister() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/chatroom/message/register`,
    postFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}

export function useChatroomClose() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/chatroom/close`,
    postFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}


export function useReadChatMessage() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/chatroom/message/read`,
    postFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}