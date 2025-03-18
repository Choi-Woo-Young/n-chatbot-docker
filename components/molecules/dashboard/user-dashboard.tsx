"use client";

import { useDashboardCurrent } from "@/lib/hooks/client/use-dashboard-fetcher";
import React from "react";
import { useEffect, useState } from "react";
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import {
  ChartConfig,
  ChartContainer,
  ChartTooltip,
  ChartTooltipContent,
} from "@/components/ui/chart";
import { PieChartIcon, TrendingUpIcon } from "lucide-react";
import { Label, Pie, PieChart } from "recharts";
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/components/ui/accordion";
import { useFaqList } from "@/lib/hooks/client/use-faq-fetcher";
import { set } from "zod";
import Image from "next/image";
import useInterval from "@/lib/useInterval";
import botImg from "/public/images/bot2.png";
import botCloseImg from "/public/images/bot2_close.png";

interface UserDashboardCurrent {
  crstt010_count: number;
  crstt020_count: number;
  crstt030_count: number;
  crstt040_count: number;
  crstt050_count: number;
}

export const UserDashboard = () => {
  const [userDashboardCurrent, setUserDashboardCurrent] =
    useState<UserDashboardCurrent>();
  const {
    trigger: dashboardCurrentTrigger,
    isMutating: dashboardCurrentMutating,
  } = useDashboardCurrent();
  const [open, setOpen] = useState(true);

  useInterval(() => {
    setOpen((prev) => !prev);
  }, 1000);

  useEffect(() => {
    dashboardCurrentTrigger().then((data) => {
      // console.log("dashboardCurrentTrigger:" + JSON.stringify(data)); //{"crstt010_count":17,"crstt020_count":8,"crstt030_count":6, "crstt040_count":2,"crstt050_count":1}
      setUserDashboardCurrent(data);
    });
  }, []);

  return (
    <div className="p-16 bg-nice-gray-e3e rounded-2xl my-auto h-full">
      {/* <div className="text-white text-2xl font-semibold">대시보드</div> */}
      <div className="flex gap-8 h-full">
        <div className="w-1/3 flex flex-col justify-between">
          <div className="flex items-center justify-center">
            <Image
              src={open ? botImg : botCloseImg}
              alt="Dashboard"
              width={400}
              height={400}
            />
          </div>
          <div className="flex flex-col gap-4">
            <CountBlock
              title="봇과대화중"
              count={userDashboardCurrent?.crstt010_count ?? 0}
              color="text-chart1"
            />
            <CountBlock
              title="지원대기"
              count={userDashboardCurrent?.crstt030_count ?? 0}
              color="text-chart5"
            />
            <CountBlock
              title="담당자 지원중"
              count={userDashboardCurrent?.crstt040_count ?? 0}
              color="text-chart4"
            />
          </div>
          {/* <CountBlock
            title="해결"
            count={userDashboardCurrent?.crstt050_count ?? 0}
            color="text-chart3"
          />
          <ResolutionRateBlock
            title="해결율"
            userDashboardCurrent={userDashboardCurrent!}
          /> */}
        </div>
        <div className="w-2/3">
          <FaqBlock />
        </div>
      </div>
    </div>
  );
};

interface CountBlockProps {
  title: string;
  count: number;
  color?: string;
}
const CountBlock = ({ title, count, color }: CountBlockProps) => {
  return (
    <div className="flex items-center justify-between py-8 px-8 rounded-xl bg-nice-bg text-white">
      <div className="text-2xl pl-5">{title}</div>
      <div className="text-4xl font-bold">
        {count}
        <span className="text-3xl ml-1">건</span>
      </div>
    </div>
    // <div className="bg-white rounded-xl shadow-md p-8 w-full space-y-4">
    //   <div className={"w-full h-8 text-2xl text-center font-bold " + color}>
    //     {title}
    //   </div>
    //   <div className="flex w-full h-32 animate-pulse rounded-xl bg-nice-gray-9ea/30 items-center">
    //     <div className="w-full text-center text-5xl font-bold">{count}</div>
    //   </div>
    // </div>
  );
};

interface ResolutionRateBlockProps {
  title: string;
  userDashboardCurrent: UserDashboardCurrent;
}
const ResolutionRateBlock = ({
  title,
  userDashboardCurrent,
}: ResolutionRateBlockProps) => {
  const [totalChatCount, setTotalChatCount] = useState<number>(0);
  const [chartData, setChartData] = useState<any>([{}]);

  const chartConfig = {
    crstt010: {
      label: "봇과대화중",
      color: "hsl(var(--chart-1))",
    },
    crstt030: {
      label: "지원대기",
      color: "hsl(var(--chart-2))",
    },
    crstt040: {
      label: "담당자지원중",
      color: "hsl(var(--chart-4))",
    },
    crstt050: {
      label: "해결",
      color: "hsl(var(--chart-3))",
    },
  };

  useEffect(() => {
    // console.log("ResolutionRateBlock:" + JSON.stringify(userDashboardCurrent));

    if (userDashboardCurrent) {
      setTotalChatCount(
        Math.floor(
          (userDashboardCurrent.crstt050_count * 100) /
            (userDashboardCurrent.crstt010_count +
              userDashboardCurrent.crstt030_count +
              userDashboardCurrent.crstt040_count +
              userDashboardCurrent.crstt050_count)
        )
      );

      setChartData([
        {
          chatState: "crstt010",
          count: userDashboardCurrent.crstt010_count,
          fill: "var(--color-crstt010)",
        },
        {
          chatState: "crstt030",
          count: userDashboardCurrent.crstt030_count,
          fill: "var(--color-crstt030)",
        },
        {
          chatState: "crstt040",
          count: userDashboardCurrent.crstt040_count,
          fill: "var(--color-crstt040)",
        },
        {
          chatState: "crstt050",
          count: userDashboardCurrent.crstt050_count,
          fill: "var(--color-crstt050)",
        },
      ]);
    }
  }, [userDashboardCurrent]);

  return (
    <div className="bg-white rounded-xl shadow-md w-full h-full mt-3">
      <Card className="flex flex-col rounded-xl">
        <CardHeader className="items-start pt-10 px-10 pb-0">
          <CardTitle className="text-2xl font-bold"> {title} </CardTitle>
          {/* <CardDescription>-</CardDescription> */}
        </CardHeader>
        <CardContent className="flex-1 p-0 -mt-12">
          <ChartContainer
            config={chartConfig}
            className="mx-auto aspect-square max-h-[350px] h-full"
          >
            <PieChart className="p-0 m-0">
              <ChartTooltip
                cursor={false}
                content={<ChartTooltipContent hideLabel />}
              />
              <Pie
                data={chartData}
                dataKey="count"
                nameKey="chatState"
                innerRadius={60}
                strokeWidth={15}
              >
                <Label
                  content={({ viewBox }) => {
                    if (viewBox && "cx" in viewBox && "cy" in viewBox) {
                      return (
                        <text
                          x={viewBox.cx}
                          y={viewBox.cy}
                          textAnchor="middle"
                          dominantBaseline="middle"
                        >
                          <tspan
                            x={viewBox.cx}
                            y={viewBox.cy}
                            className="fill-foreground text-3xl font-bold"
                          >
                            {totalChatCount.toLocaleString()}%
                          </tspan>
                          <tspan
                            x={viewBox.cx}
                            y={(viewBox.cy || 0) + 24}
                            className="fill-muted-foreground"
                          >
                            해결율
                          </tspan>
                        </text>
                      );
                    }
                  }}
                />
              </Pie>
            </PieChart>
          </ChartContainer>
        </CardContent>
        <CardFooter className="flex-col gap-2">
          <div className="flex items-center gap-1 font-medium leading-none -mt-3">
            전체 기간 동안 해결된 문의 비율{" "}
            <TrendingUpIcon className="h-5 w-5" />
          </div>
          {/* <div className="leading-none text-muted-foreground">
            전체 기간 동안 해결된 문의 비율 <TrendingUp className="h-4 w-4" />
          </div> */}
        </CardFooter>
      </Card>
    </div>
  );
};

const FaqBlock = () => {
  const [faqList, setFaqList] = useState<FaqType>([]);
  const { trigger: faqListTrigger, isMutating: faqListMutating } = useFaqList();
  useEffect(() => {
    faqListTrigger().then((data) => {
      // console.log("faqListTrigger:" + JSON.stringify(data));
      data && setFaqList(data);
    });
  }, []);

  return (
    <div className="bg-white rounded-xl shadow-md p-12 w-full h-full space-y-4">
      <div className="w-full text-2xl font-bold mb-5">자주 묻는 질문(FAQ)</div>
      <div className="h-full overflow-auto">
        <Accordion type="single" collapsible className="w-full">
          {faqList.map((faq: FaqType) => (
            <AccordionItem
              key={faq.faq_id}
              value={`item` + faq.faq_id}
              className="px-2"
            >
              <AccordionTrigger className="whitespace-nowrap w-full">
                <p className="text-lg truncate font-semibold">{faq.question}</p>
              </AccordionTrigger>
              <AccordionContent className="text-lg leading-8">
                {faq.answer}
              </AccordionContent>
            </AccordionItem>
          ))}
        </Accordion>
      </div>
    </div>
  );
};
