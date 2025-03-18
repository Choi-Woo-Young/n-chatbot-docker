import useSWRMutation from "swr/mutation";
import { getSwrMutationFetcher, postFetcher } from "./fetcher";

export function useChattingSupport() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/chatroom/support`,
    postFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}
