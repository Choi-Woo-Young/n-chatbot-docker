import React from 'react'

import { cn } from '@/lib/utils'
import { ExternalLink } from './external-link'


export function FooterText({ className, ...props }: React.ComponentProps<'p'>) {
  return (
    <p
      className={cn(
        'px-2 text-center text-xs leading-normal text-muted-foreground',
        className
      )}
      {...props}
    >
      {/* <ExternalLink href="https://nextjs.org">업무지원 챗봇</ExternalLink> */}
    </p>
  )
}
