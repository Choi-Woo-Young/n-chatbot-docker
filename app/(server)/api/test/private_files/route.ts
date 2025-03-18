import { NextResponse } from "next/server";
import fs from "fs";
import path from "path";

// Helper function to recursively get all files in a directory
function getAllFiles(dirPath: string, arrayOfFiles: string[] = []) {
  const files = fs.readdirSync(dirPath);

  files.forEach((file) => {
    const filePath = path.join(dirPath, file);
    if (fs.statSync(filePath).isDirectory()) {
      arrayOfFiles = getAllFiles(filePath, arrayOfFiles);
    } else {
      arrayOfFiles.push(filePath);
    }
  });

  return arrayOfFiles;
}

export async function GET() {
  const directoryPath = path.join(process.cwd(), "api/files");

  try {
    const files = getAllFiles(directoryPath);
    const fileDetails = files
      .filter((file) => !path.basename(file).startsWith(".")) // '.'으로 시작하는 파일 제외
      .map((file) => ({
        value: path.relative(directoryPath, file), // api/files 이후 경로 포함
        label: path.basename(file),
      }));

    return NextResponse.json(fileDetails);
  } catch (err) {
    return NextResponse.json(
      { error: "Failed to read directory" },
      { status: 500 }
    );
  }
}
