from langchain_core.callbacks import BaseCallbackHandler


class CustomChatCallbackHandler(BaseCallbackHandler):
    def __init__(self, queue):
        super().__init__()
        self._queue = queue
        self._stop_signal = None
        #self.message = ""
        print("CustomChatCallbackHandler Initialized")


    # On the arrival of the new token, we are adding the new token in the queue
    async def on_llm_new_token(self, token, *args, **kwargs):
        #self.message += token 
        self._queue.put(token)
        
    # on the start or initialization, we just print or log a starting message
    async def on_llm_start(self, *args, **kwargs):
        #self.message_box = ""
        """Run when LLM starts running."""
        print("generation started")
    # On receiving the last token, we add the stop signal, which determines the end of the generation
    async def on_llm_end(self, *args, **kwargs):
        #save_message(self.message, "ai")
        """Run when LLM ends running."""
        print("\n\ngeneration concluded")
        self._queue.put(self._stop_signal)
