import dynamic from "next/dynamic";
import { CallBackProps, Props, Step } from "react-joyride";
import TourTooltip from "./tour-tooltip";
import {
  useUserGuideTourInfoUpdate,
  useUserInfoGet,
} from "@/lib/hooks/client/use-user-fetcher";
import { useEffect, useState } from "react";

const JoyRide = dynamic(() => import("react-joyride"), { ssr: false });

interface GuideTourProps {
  location: string;
  userInfo: UsersType;
  run: boolean;
  steps: Step[];
}

export default function GuideTour({
  location,
  userInfo,
  run,
  steps,
}: GuideTourProps) {
  const [guideTourJson, setGuideTourJson] = useState<string>();
  const { trigger: userGuideTourInfoUpdateTrigger } =useUserGuideTourInfoUpdate();
  const { trigger: userInfoGetTrigger } = useUserInfoGet(userInfo.user_id!);

  useEffect(() => {
    userInfoGetTrigger().then((data: UsersType) => {
      if (data) {
        setGuideTourJson(data.guide_tour_json ?? "{}");
      }
    });
  }, [userInfoGetTrigger]);

  // JoyRide의 콜백 함수
  const callback = (data: CallBackProps) => {
    if (data.action === "reset") {
      const guideTourJsonObj = JSON.parse(guideTourJson ?? "{}");
      guideTourJsonObj[location] = "Y";

      // DB에 guide_tour_json 업데이트
      userGuideTourInfoUpdateTrigger({
        body: {
          userId: userInfo.user_id,
          guideTourJson: JSON.stringify(guideTourJsonObj),
        },
      });
    }
  };

  // userInfo.user_id가 없으면 null 반환
  if (!userInfo?.user_id) return null;
  // guideTourJsonO에 따라 JoyRide 렌더링
  //alert(JSON.stringify(guideTourJsonO));
  if (JSON.parse(guideTourJson ?? "{}")[location] === "N") {
    return (
      <JoyRide
        showProgress={true}
        continuous={true}
        spotlightClicks={true}
        tooltipComponent={TourTooltip}
        callback={callback}
        styles={{
          options: {
            zIndex: 10000,
          },
        }}
        run={run}
        steps={steps}
      />
    );
  }

  return null;
}
