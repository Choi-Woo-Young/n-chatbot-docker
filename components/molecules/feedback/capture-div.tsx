// contexts/CaptureDivContext.tsx
"use client";

import { createContext, RefObject, ReactNode, useRef } from "react";

export const CaptureDivContext =
  createContext<RefObject<HTMLDivElement> | null>(null);

export function CaptureDivProvider({ children }: Readonly<{ children: ReactNode }>) {
  const divRef = useRef<HTMLDivElement>(null);

  return (
    <CaptureDivContext.Provider value={divRef}>
      <div id="captureDiv" ref={divRef}>
        {children}
      </div>
    </CaptureDivContext.Provider>
  );
}
