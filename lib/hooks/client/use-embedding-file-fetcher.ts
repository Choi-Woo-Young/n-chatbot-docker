import useSWRMutation from "swr/mutation";
import { getSwrMutationFetcher, postFetcher } from "./fetcher";


export function useEmbeddingFileList() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/embedding-file/list`,
    getSwrMutationFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}