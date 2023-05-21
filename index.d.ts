declare module 'polybot-tts' {
  import React from "react"
  export const createTextToSpeechByText = (text: string, voiceName: string, key:string, region: string) : Promise<{isInit: boolean}> => void
  export const createTextToSpeechBySSML = (ssml: string, voiceName: string, key: string, region: string): Promise<{ isInit: boolean }> => void
  export const stopEdge = () => void
}