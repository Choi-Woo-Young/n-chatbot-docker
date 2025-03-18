import useSWRMutation from "swr/mutation";
import { getSwrMutationFetcher } from "./fetcher";

export function useNoticeList() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/notice/list`,
    getSwrMutationFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}
