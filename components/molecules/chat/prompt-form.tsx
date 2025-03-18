"use client";

import { Button } from "@/components/ui/button";
import { IconArrowElbow } from "@/components/ui/icons";
import { Textarea } from "@/components/ui/textarea";
import { log } from "console";
import { ChangeEvent, useState } from "react";
import { set } from "zod";

export function PromptForm({
  chatMessages,
  setChatMessages,
}: {
  chatMessages: ChatMsgType[];
  setChatMessages: (chatMessages: ChatMsgType[]) => void;
}) {
  const [msgValue, setMsgValue] = useState("");
  const [botMsg, setBotMsg] = useState("");
  const [isBotTyping, setIsBotTyping] = useState(false);

  const handleInputChange = (
    event: ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) => {
    const { id, value } = event.target;
    setMsgValue(value);
  };

  const handleSubmit = async () => {
    if (msgValue) {
      const newMessage: ChatMsgType = {
        id: String(chatMessages.length + 1),
        userId: "1",
        message: msgValue,
        createdAt: new Date(),
      };
      setChatMessages([...chatMessages, newMessage]);
      setTimeout(() => {
        setMsgValue('');
      }, 10);

      setIsBotTyping(true);
      let botMessageContent = "";
      let botMessage: ChatMsgType = {
        id: String(chatMessages.length + 1),
        userId: "bot",
        message: isBotTyping?botMsg:botMessageContent,
        createdAt: new Date(),
      };
      setChatMessages([...chatMessages, botMessage]);
      
      // 봇에게 메시지 보내기
      const res = await fetch("/api/chat", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ query: msgValue }),
      });

      if (!res.body) {
        setIsBotTyping(false);
        console.error("No response body");
        const botMessage: ChatMsgType = {
          id: String(chatMessages.length + 1),
          userId: "bot",
          message: "No response body",
          createdAt: new Date(),
        };
        setChatMessages([...chatMessages, botMessage]);
        return;
      }

      const reader = res.body.getReader();
      const decoder = new TextDecoder();
      while (true) {
        const { done, value } = await reader.read();
        console.log("client component - value", value);
        if (done) {
          setIsBotTyping(false);
          break;
        }
        botMessageContent += decoder.decode(value);
        setBotMsg(botMessageContent);
        console.log("reading..." + botMessageContent);
        // setBotMsg(botMessageContent);
      }
    }
  };

  return (
    <div>
      <div>{botMsg}</div>
      <div className="flex flex-row max-h-60 w-full grow items-center bg-background">
        <Textarea
          tabIndex={0}
          placeholder="Send a message."
          className="min-h-[60px] w-full resize-none bg-transparent px-4 py-[1.3rem] focus-within:outline-none sm:text-sm"
          autoFocus
          spellCheck={false}
          autoComplete="off"
          autoCorrect="off"
          name="message"
          rows={1}
          value={msgValue}
          onChange={handleInputChange}
        />
        <Button
          className="ml-4"
          size="icon"
          disabled={msgValue === ""}
          onClick={handleSubmit}
        >
          <IconArrowElbow />
          <span className="sr-only">Send message</span>
        </Button>
      </div>
    </div>
  );
}
