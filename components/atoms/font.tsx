import localFont from 'next/font/local'

const pretendard = localFont({
  display: 'swap',
  src: '../../fonts/PretendardVariable.ttf',
  variable: '--pretendard',
})

const sumClass = (...classnames: string[]) => {
  return classnames.join(' ')
}

export const fontClassNames = sumClass(pretendard.className)
