import useSWRMutation from "swr/mutation";
import { getSwrMutationFetcher, postFetcher } from "./fetcher";

export function useModelName() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/test/get-model-name`,
    getSwrMutationFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}

export function useTestEmbedding() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/test/embedding`,
    postFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}

export function useInsertEmbeddingFile() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/test/insert-embedding-file`,
    postFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}

export function useSyncUsers() {
  const { trigger, isMutating } = useSWRMutation(
    `${process.env.NEXT_PUBLIC_API_URL}/api/sync`,
    getSwrMutationFetcher
  );
  return {
    trigger: trigger,
    isMutating: isMutating,
  };
}
