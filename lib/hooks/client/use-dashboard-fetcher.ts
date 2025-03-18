import useSWRMutation from "swr/mutation";
import { getSwrMutationFetcher } from "./fetcher";

export function useDashboardCurrent() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/dashboard/user`,
    getSwrMutationFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}