import useSWRMutation from "swr/mutation";
import { getSwrMutationFetcher, postFetcher } from "./fetcher";

export function useUserGuideTourInfoUpdate() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/user/guide-tour-info`,
    postFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}

export function useUserInfoGet(userId: number) {
  const { trigger, data, error } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/user/info?userId=${userId}`,
    getSwrMutationFetcher
  );
  return {
    trigger: trigger,
    data: data,
    error: error,
  };
}
