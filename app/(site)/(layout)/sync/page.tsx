"use client";

import { Button } from "@/components/ui/button";
import { Separator } from "@/components/ui/separator";
import {
  useInsertEmbeddingFile,
  useSyncUsers,
} from "@/lib/hooks/client/use-test-fetcher";
import { useState } from "react";
import { toast } from "sonner";

export default function SyncPage() {
  const [result, setResult] = useState<any>();
  const { trigger: insertEmbeddingFileTrigger } = useInsertEmbeddingFile();
  const { trigger: syncUsersTrigger } = useSyncUsers();

  const handleInsertEmbeddingFile = () => {
    insertEmbeddingFileTrigger({
      body: {},
    });
  };

  const handleSyncUsers = async () => {
    const syncUsersResult = await syncUsersTrigger();
    if (syncUsersResult) {
      toast.success("사용자 동기화 완료", { position: "top-center" });
    } else {
      toast.error("사용자 동기화 실패", { position: "top-center" });
    }
    setResult(syncUsersResult);
  };

  return (
    <div id="testPage" className="bg-white p-4 h-full flex flex-col text-sm">
      <div id="buttons" className="flex items-center mb-4 gap-2">
        <Button onClick={handleInsertEmbeddingFile}>
          embedding_file 동기화
        </Button>
        <Button onClick={handleSyncUsers}>사용자 동기화</Button>
      </div>
      <Separator />
      <div
        id="contents"
        className="flex-1 flex flex-col h-full overflow-scroll"
      >
        <div className="font-bold text-sm underline mt-2 pl-1">Response</div>
        <div id="content1" className="mb-4 p-2">
          {result}
        </div>
      </div>
    </div>
  );
}
