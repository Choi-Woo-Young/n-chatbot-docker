import { Card, CardContent } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Toggle } from "@/components/ui/toggle";
import {
  useChatroomList,
  useChatroomSupportList,
} from "@/lib/hooks/client/use-chatroom-fetcher";
import { searchStore } from "@/store/search-store";
import { Search } from "lucide-react";
import { ChangeEvent, useCallback, useEffect, useState } from "react";

interface ChatListSearchProps {
  searchKey: string;
  chatId: number | null;
  setChatroomList: (chatroomList: ChatRoomType[]) => void;
  availableStateCdList: string[];
  refresh?: boolean;
  showToggle: boolean;
}

export function ChatListSearch({
  searchKey,
  chatId,
  setChatroomList,
  availableStateCdList,
  refresh,
  showToggle,
}: ChatListSearchProps) {
  const {
    getStateCdList,
    getSearchKeyword,
    setStateCdList,
    setSearchKeyword,
    isNewChat,
    setIsNewChat,
    isSupportChat,
    setIsSupportChat,
  } = searchStore();
  const { trigger: chatroomListTrigger, isMutating: isChatroomListMutating } =
    useChatroomList();
  const {
    trigger: chatroomSupportListTrigger,
    isMutating: isChatroomSupportListMutating,
  } = useChatroomSupportList();
  const [isClient, setIsClient] = useState(false);

  useEffect(() => {
    let updatedStateCdList: string[] = getStateCdList(searchKey) || [];
    if (updatedStateCdList.length == 0) {
      setStateCdList(searchKey, availableStateCdList);
    }

    setIsClient(true);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  useEffect(() => {
    const interval = setInterval(() => {
      chatRoomSearch();
    }, 10000); // 10초마다 실행

    return () => clearInterval(interval);
  }, []);

  const chatRoomSearch = () => {
    let updatedStateCdList: string[] = getStateCdList(searchKey) || [];
    setStateCdList(searchKey, updatedStateCdList);

    if (updatedStateCdList.length == 0) {
      setChatroomList([]);
      return;
    }
    
    var state_cds =
      updatedStateCdList.length == 0 ? availableStateCdList.filter((state) => state !== "CRSTT020").join(",") : updatedStateCdList.filter((state) => state !== "CRSTT020").join(",");
    var search_keyword = getSearchKeyword(searchKey);

    if (searchKey == "MyRequestPage" || searchKey == "MyFinishedPage") {
      getMyChatroomList(state_cds, search_keyword);
    } else if (searchKey == "WaitingPage" || searchKey == "FinishedPage") {
      getSupportChatroomList(state_cds, search_keyword);
    }
  };

  const getMyChatroomList = (state_cds: string, search_keyword: string) => {
    !isChatroomListMutating &&
      chatroomListTrigger({
        body: {
          state_cds,
          search_keyword,
        },
      }).then((data) => {
        setChatroomList(data);
      });
  };

  const getSupportChatroomList = (
    state_cds: string,
    search_keyword: string
  ) => {
    !isChatroomSupportListMutating &&
      chatroomSupportListTrigger({
        body: {
          state_cds,
          search_keyword,
        },
      }).then((data) => {
        setChatroomList(data);
      });
  };

  // const chatroomListData = useCallback(() => {
  //   chatRoomSearch();
  // }, [chatId]);

  useEffect(() => {
    chatRoomSearch();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [refresh]);

  // 봇과 새로운 대화 버튼 클릭 시 봇과 대화중 토글 활성화
  useEffect(() => {
    if (isNewChat) {
      handleToggle("CRSTT010");
      setIsNewChat(false);
    }
  }, [isNewChat]);

  // 지원요청 버튼 클릭 시 지원대기 토글 활성화
  useEffect(() => {
    if (isSupportChat) {
      if (getStateCdList("MyRequestPage").includes("CRSTT030")) {
        chatRoomSearch();
      } else {
        handleToggle("CRSTT030");
      }
      setIsSupportChat(false);
    }
  }, [isSupportChat]);

  const handleToggle = (value: string) => {
    let updatedStateCdList: string[] = getStateCdList(searchKey) || [];
    if (updatedStateCdList.includes(value)) {
      updatedStateCdList = updatedStateCdList.filter(
        (state) => state !== value
      );
    } else {
      updatedStateCdList = [...updatedStateCdList, value];
    }

    setStateCdList(searchKey, updatedStateCdList);

    if (updatedStateCdList.length == 0) {
      setChatroomList([]);
      return;
    }

    var state_cds = updatedStateCdList.join(",");
    var search_keyword = getSearchKeyword(searchKey);

    if (searchKey == "MyRequestPage" || searchKey == "MyFinishedPage") {
      getMyChatroomList(state_cds, search_keyword);
    } else if (searchKey == "WaitingPage" || searchKey == "FinishedPage") {
      getSupportChatroomList(state_cds, search_keyword);
    }
  };

  const handleInputChange = (
    event: ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) => {
    const { id, value } = event.target;
    setSearchKeyword(searchKey, value);

    !isChatroomListMutating &&
      chatroomListTrigger({
        body: {
          state_cds: getStateCdList(searchKey).join(","),
          search_keyword: value,
        },
      }).then((data) => {
        setChatroomList(data);
      });
  };

  return (
    <Card className="gap-2 border-none shadow-none">
      <CardContent className="pt-6">
        <div className="flex flex-col space-y-1.5">
          <div className="flex items-center gap-x-2 bg-nice-gray-f5f rounded-full py-2 px-4">
            <Search className="text-nice-gray-737" />
            <Input
              id="search_keyword"
              placeholder="제목, 내용, 해시태그를 입력하세요."
              className="border-none bg-transparent focus-visible:ring-0 focus-visible:ring-offset-0"
              value={getSearchKeyword(searchKey)}
              onChange={handleInputChange}
            />
          </div>

          {showToggle && availableStateCdList.length > 0 && (
            <div className="flex justify-center">
              <div className="flex items-center bg-nice-gray-f5f gap-x-2 px-2.5 py-2 rounded-full mt-2">
                {availableStateCdList.includes("CRSTT010") && (
                  <Toggle
                    data-state={
                      isClient && getStateCdList(searchKey).includes("CRSTT010")
                        ? "on"
                        : "off"
                    }
                    onPressedChange={() => handleToggle("CRSTT010")}
                    className="w-24 px-2 text-nice-666 rounded-full data-[state=on]:bg-nice-blue-500 data-[state=on]:text-white hover:bg-transparent"
                  >
                    봇과 대화중
                  </Toggle>
                )}
                {availableStateCdList.includes("CRSTT020") && (
                  <Toggle
                    data-state={
                      isClient && getStateCdList(searchKey).includes("CRSTT020")
                        ? "on"
                        : "off"
                    }
                    onPressedChange={() => handleToggle("CRSTT020")}
                    className="w-24 px-2 text-nice-666 rounded-full data-[state=on]:bg-nice-blue-500 data-[state=on]:text-white hover:bg-transparent"
                  >
                    이관종료
                  </Toggle>
                )}
                {availableStateCdList.includes("CRSTT030") && (
                  <Toggle
                    data-state={
                      isClient && getStateCdList(searchKey).includes("CRSTT030")
                        ? "on"
                        : "off"
                    }
                    onPressedChange={() => handleToggle("CRSTT030")}
                    className="w-24 px-2 text-nice-666 rounded-full data-[state=on]:bg-nice-blue-500 data-[state=on]:text-white hover:bg-transparent"
                  >
                    지원대기
                  </Toggle>
                )}
                {availableStateCdList.includes("CRSTT040") && (
                  <Toggle
                    data-state={
                      isClient && getStateCdList(searchKey).includes("CRSTT040")
                        ? "on"
                        : "off"
                    }
                    onPressedChange={() => handleToggle("CRSTT040")}
                    className="w-24 px-2 text-nice-666 rounded-full data-[state=on]:bg-nice-blue-500 data-[state=on]:text-white hover:bg-transparent"
                  >
                    지원중
                  </Toggle>
                )}
                {availableStateCdList.includes("CRSTT050") && (
                  <Toggle
                    data-state={
                      isClient && getStateCdList(searchKey).includes("CRSTT050")
                        ? "on"
                        : "off"
                    }
                    onPressedChange={() => handleToggle("CRSTT050")}
                    className="w-24 px-2 text-nice-666 rounded-full data-[state=on]:bg-nice-blue-500 data-[state=on]:text-white hover:bg-transparent"
                  >
                    종료
                  </Toggle>
                )}
              </div>
            </div>
          )}
        </div>
      </CardContent>
    </Card>
  );
}
