"use client";

import * as React from "react";
import { useState, useEffect, useRef } from "react";
import { Check, ChevronsUpDown } from "lucide-react";

import { cn } from "@/lib/utils";
import { Button } from "@/components/ui/button";
import {
  Command,
  CommandEmpty,
  CommandGroup,
  CommandInput,
  CommandItem,
  CommandList,
} from "@/components/ui/command";
import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from "@/components/ui/popover";
import { Input } from "@/components/ui/input";
import {
  useInsertEmbeddingFile,
  useModelName,
  useTestEmbedding,
} from "@/lib/hooks/client/use-test-fetcher";
import { Separator } from "@/components/ui/separator";

interface File {
  value: string;
  label: string;
}

const Combobox: React.FC<{
  value: string;
  onValueChange: (value: string) => void;
}> = ({ value, onValueChange }) => {
  const [open, setOpen] = useState(false);
  const [files, setFiles] = useState<File[]>([]);
  const buttonRef = useRef<HTMLButtonElement>(null);

  useEffect(() => {
    const fetchFiles = async () => {
      const response = await fetch("/api/test/private_files");
      let data: File[] = await response.json();
      data = [{ value: "all", label: "전체" }, ...data];

      console.log("Files: ", data);
      setFiles(data);
    };

    fetchFiles();
  }, []);

  return (
    <Popover open={open} onOpenChange={setOpen}>
      <PopoverTrigger asChild>
        <Button
          ref={buttonRef}
          variant="outline"
          role="combobox"
          aria-expanded={open}
          className="w-full justify-between"
        >
          {value
            ? files.find((file) => file.value === value)?.label
            : "Select file..."}
          <ChevronsUpDown className="ml-2 h-4 w-4 shrink-0 opacity-50" />
        </Button>
      </PopoverTrigger>
      <PopoverContent style={{ width: buttonRef.current?.offsetWidth }}>
        <Command>
          <CommandInput placeholder="Search file..." />
          <CommandList>
            <CommandEmpty>No file found.</CommandEmpty>
            <CommandGroup>
              {files.map((file) => (
                <CommandItem
                  key={file.value}
                  value={file.value}
                  onSelect={(currentValue) => {
                    onValueChange(currentValue === value ? "" : currentValue);
                    setOpen(false);
                  }}
                >
                  <Check
                    className={cn(
                      "mr-2 h-4 w-4",
                      value === file.value ? "opacity-100" : "opacity-0"
                    )}
                  />
                  {file.label}
                </CommandItem>
              ))}
            </CommandGroup>
          </CommandList>
        </Command>
      </PopoverContent>
    </Popover>
  );
};

const MyComponent: React.FC = () => {
  const [inputValue, setInputValue] = useState<string>("");
  const [chunkValue, setChunkValue] = useState<number | "">(400);
  const [overlapValue, setOverlapValue] = useState<number | "">(150);
  const [modelName, setModelName] = useState<string>("");
  const [filePath, setFilePath] = useState<string>("");
  const [chatResponse, setChatResponse] = useState<string>("");
  // const [context, setContext] = useState<string>("");
  const [context, setContext] = useState<string[]>([]);
  const [pageContents, setPageContents] = useState<string[]>([]);
  const { trigger: modelNameTrigger } = useModelName();
  const { trigger: embeddingTrigger } = useTestEmbedding();
  const { trigger: insertEmbeddingFileTrigger } = useInsertEmbeddingFile();

  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setInputValue(e.target.value);
  };

  const handleChunkChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setChunkValue(e.target.value === "" ? "" : Number(e.target.value));
  };

  const handleOverlapChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setOverlapValue(e.target.value === "" ? "" : Number(e.target.value));
  };

  const handleSubmit = () => {
    embeddingTrigger({
      body: {
        model: modelName,
        chunk_size: chunkValue,
        overlap_size: overlapValue,
        file_path: filePath,
        query: inputValue,
      },
    }).then((data) => {
      console.log("Embedding: ", data);
      setChatResponse(data.chat_response);
      setContext(data.context);
      setPageContents(data.page_contents);
    });
  };

  const handleInsertEmbeddingFile = () => {
    insertEmbeddingFileTrigger({
      body: {},
    });
  };

  useEffect(() => {
    modelNameTrigger({
      body: {},
    }).then((data) => {
      console.log("ModelName: ", data.model_name);
      setModelName(data.model_name);
    });
  }, []);

  return (
    <div id="testPage" className="bg-white p-4 h-full flex flex-col text-sm">
      <div id="etc" className="flex items-center justify-between mb-4">
        <Button onClick={handleInsertEmbeddingFile}>
          Insert Into embedding_file
        </Button>
      </div>
      <div id="condition" className="w-full flex gap-2 p-2 mb-4">
        <div id="col1" className="flex-1 flex flex-col justify-center gap-2">
          <div id="row1" className="flex items-center gap-4">
            <div className="flex items-center">
              <label className="mr-2">모델명:</label>
              <span>{modelName}</span>
            </div>
            <div className="flex items-center">
              <label className="mr-2">Chunk:</label>
              <Input
                type="number"
                className="w-[70px]"
                value={chunkValue}
                onChange={handleChunkChange}
              />
            </div>
            <div className="flex items-center">
              <label className="mr-2">Overlap:</label>
              <Input
                type="number"
                className="w-[70px]"
                value={overlapValue}
                onChange={handleOverlapChange}
              />
            </div>
            <div className="flex items-center flex-1">
              <label className="min-w-fit mr-2">임베딩 파일:</label>
              <Combobox
                value={filePath}
                onValueChange={(value) => setFilePath(value)}
              />
            </div>
          </div>
          <div id="row2" className="flex items-center gap-2">
            <label className="mr-2">질문:</label>
            <Input
              type="text"
              placeholder="Enter question..."
              className="flex-1 mr-2"
              value={inputValue}
              onChange={handleInputChange}
            />
          </div>
        </div>
        <div id="col2" className="flex items-center">
          <Button onClick={handleSubmit}>Submit</Button>
        </div>
      </div>
      <Separator />
      <div id="contents" className="flex-1 flex flex-col h-full">
        <div className="font-bold text-sm underline mt-2 pl-1">답변</div>
        <div id="content1" className="mb-4 p-2">
          {chatResponse}
        </div>
        <Separator />
        {/* <div className="flex-1 flex flex-col h-full overflow-hidden"> */}
        <div className="font-bold text-sm underline mt-2 pl-1">context</div>
        <div id="content2" className="p-2 h-96 overflow-y-auto">
          {context?.map((content, index) => (
            <p key={"context" + index} className="mb-2">
              {content}
            </p>
          ))}
        </div>
        <Separator />
        <div className="font-bold text-sm underline mt-2 pl-1">임베딩</div>
        <div id="content3" className="p-2 h-72 overflow-y-auto">
          {pageContents?.map((content, index) => (
            <p key={"pageContents" + index} className="mb-2">
              {content}
            </p>
          ))}
        </div>
      </div>
    </div>
  );
};

export default MyComponent;
