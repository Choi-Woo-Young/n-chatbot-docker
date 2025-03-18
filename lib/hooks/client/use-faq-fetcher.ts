import useSWRMutation from "swr/mutation";
import { getSwrMutationFetcher } from "./fetcher";

export function useFaqList() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/faq/list`,
    getSwrMutationFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}