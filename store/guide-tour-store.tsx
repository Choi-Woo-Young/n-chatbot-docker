import { Placement, Step } from "react-joyride";
import { create } from "zustand";
import { persist } from "zustand/middleware";

// stepMap의 정확한 타입 정의
interface StepMap {
  [key: string]: {
    steps: Step[];
  };
}

interface guideTourStoreInterface {
  stepMap?: StepMap; // stepMap의 타입을 StepMap으로 정의

  getGuideTourSteps: (key: string) => Step[];
}

export const guideTourStore = create<guideTourStoreInterface>()(
  persist(
    (set, get) => ({
      stepMap: {
        login: {
          steps: [
            {
              target: "#hello",
              content: "안녕하세요~ 만나서 반갑습니다! 저는 챗봇 서비스의 특성상 ID/PW 없이도 접속하신 VDI 기반으로 사용자를 알 수 있답니다 😎 ",
              disableBeacon: true,
              placement: "left" as Placement,
            },
            {
              target: "#login-button",
              content:
                "제가 확인한 정보가 맞다면 눌러주세요!!🚀",
              disableBeacon: true,
              placement: "left" as Placement,
            },
            {
              target: "#iamnot",
              content: "제가 확인한 사용자 정보가 잘못되었다면 눌러주세요!😱",
              disableBeacon: true,
              placement: "left" as Placement,
            },
          ],
        },
      },

      getGuideTourSteps: (key: string) => {
        const steps: Step[] = [];

        // stepMap이 정의되어 있고, 해당 key가 존재하는지 확인
        if (get().stepMap && get().stepMap![key]) {
          return get().stepMap![key].steps;
        }

        return steps; // key가 없을 경우 빈 배열 반환
      },
    }),
    {
      name: "guide-tour-store", // 잘못된 철자 수정: quide -> guide
      getStorage: () => localStorage,
    }
  )
);
