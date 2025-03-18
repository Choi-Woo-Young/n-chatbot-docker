from langchain_core.prompts import PromptTemplate

chat_summary_prompt_template = PromptTemplate.from_template(
   """
   아래 대화 문맥을 한국어로 "요약"하고, 이 대화를 바탕으로 채팅방의 "제목"과 "핵심키워드"를 추출해주세요.
            
            - "제목"은 대화의 주제를 간략하게 나타내는 문장으로 작성해주세요. 예) "ITONE 비밀번호 초기화"
            - "요약"은 대화의 내용을 간략하게 나타내는 문장으로 작성해주세요. 얘) "비밀번호 초기화 방법에 대한 문의입니다."
            - "핵심키워드"는 대화의 주제를 나타내는 여러 개의 단어들을 "/"로 구분하여 작성해주세요. 얘) "ITONE/비밀번호/초기화"
            
            "제목", "요약", "핵심키워드"는 '###'로 구분해서 반드시 아래 응답 양식에 맞게 작성해주세요. '###'는 구분자로만 사용하세요.

            대화 문맥: {context}

            응답 양식: ###"제목"###"요약"###"핵심키워드"
    """)

chat_summary_prompt_template.save("api/prompts/json/chat_summary_prompt.json")



extract_chat_title_prompt_template = PromptTemplate.from_template(
   """
    Your task is to extract the title of the conversation from the context of the conversation.
    Remember, The title of the conversation must be just one sentence in Korean.
    You must never include anything other than the context of the conversation below.

    Example: ITONE 비밀번호 초기화

    Conversation Context: {context}
    """)
extract_chat_title_prompt_template.save("api/prompts/json/extract_chat_title_prompt.json")


chat_context_summary_prompt_template = PromptTemplate.from_template(
   """
    Your task is to briefly summarize the context of the conversation. 
    Summarize the context in Korean, and keep the summary to a maximum of 2 sentences.
    You must never include anything other than the context of the conversation below.

    Example: 비밀번호 초기화 방법에 대한 문의입니다.

    Conversation Context: {context}
    """)
chat_context_summary_prompt_template.save("api/prompts/json/chat_context_summary_prompt.json")


extract_chat_tags_prompt_template = PromptTemplate.from_template(
   """
    Your mission is to extract up to 5 key keywords from the context of the conversation.
    The key keyword must be Korean.
    If there are multiple keywords, separate them by the "/" symbol.
    You must never include anything other than the context of the conversation below.

    Example: ITONE/비밀번호/초기화

    Conversation Context: {context}
    """)
extract_chat_tags_prompt_template.save("api/prompts/json/xtract_chat_tags_prompt.json")



