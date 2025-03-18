import { create } from "zustand";
import { persist } from "zustand/middleware";

interface searchStore {
  chatSearchList?: ChatSearchType[];

  setStateCdList: (searchKey: string, stateCdList: string[]) => void;

  setSearchKeyword: (searchKey: string, searchKeyword: string) => void;

  getStateCdList: (searchKey: string) => string[];

  getSearchKeyword: (searchKey: string) => string;

  isNewChat: boolean;
  setIsNewChat: (state: boolean) => void;

  isSupportChat: boolean;
  setIsSupportChat: (state: boolean) => void;
}

export const searchStore = create<searchStore>()(
  persist(
    (set, get) => ({
      chatSearchList: [],

      setStateCdList: (searchKey, stateCdList) => {
        set((state) => {
          if (!state.chatSearchList || state.chatSearchList.length === 0) {
            return {
              ...state,
              chatSearchList: [
                { searchKey: searchKey, stateCdList: stateCdList },
              ],
            };
          } else {
            const chatSearch = state.chatSearchList.find(
              (chatSearch) => chatSearch.searchKey === searchKey
            );
            if (!chatSearch) {
              return {
                ...state,
                chatSearchList: [
                  ...state.chatSearchList,
                  { searchKey: searchKey, stateCdList: stateCdList },
                ],
              };
            } else {
              const chatSearchList = state.chatSearchList?.map((chatSearch) => {
                if (chatSearch.searchKey === searchKey) {
                  return { ...chatSearch, stateCdList: stateCdList };
                }
                return chatSearch;
              });
              return { ...state, chatSearchList: chatSearchList };
            }
          }
        });
      },

      setSearchKeyword: (searchKey, searchKeyword) => {
        set((state) => {
          const chatSearchList = state.chatSearchList?.map((chatSearch) => {
            if (chatSearch.searchKey === searchKey) {
              return { ...chatSearch, searchKeyword };
            }
            return chatSearch;
          });
          return { ...state, chatSearchList };
        });
      },

      getStateCdList: (searchKey) => {
        let stateCdList: string[] = [];
        get().chatSearchList?.filter((chatSearch) => {
          if (chatSearch.searchKey === searchKey) {
            stateCdList = chatSearch.stateCdList ?? [];
          }
        });
        return stateCdList;
      },

      getSearchKeyword: (searchKey) => {
        let searchKeyword: string = "";
        get().chatSearchList?.filter((chatSearch) => {
          if (chatSearch.searchKey === searchKey) {
            searchKeyword = chatSearch.searchKeyword ?? "";
          }
        });
        return searchKeyword;
      },

      isNewChat: false,
      setIsNewChat: (isNewChat) => set((state) => ({ ...state, isNewChat })),

      isSupportChat: false,
      setIsSupportChat: (isSupportChat) => set((state) => ({ ...state, isSupportChat })),
    
    }),
    
    {
      name: "search-store",
      getStorage: () => localStorage,
    }
  )
);
