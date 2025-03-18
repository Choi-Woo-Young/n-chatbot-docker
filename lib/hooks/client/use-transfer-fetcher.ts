import useSWRMutation from "swr/mutation";
import { getSwrMutationFetcher, postFetcher } from "./fetcher";

export function useManagerList() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/transfer/manager`,
    getSwrMutationFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}

export function useManagerTransfer() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/transfer/manager`,
    postFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}