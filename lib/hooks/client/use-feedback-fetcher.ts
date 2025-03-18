import useSWRMutation from "swr/mutation";
import { postFetcher } from "./fetcher";

export function useSubmitFeedback() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/feedback`,
    postFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}
