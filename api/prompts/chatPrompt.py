from langchain_core.prompts import PromptTemplate, ChatPromptTemplate, MessagesPlaceholder
from langchain.prompts import load_prompt

prompt_template = PromptTemplate.from_template(
    """
    You are a helpdesk agent "나비스(NARVIS)" who answers questions based on the "Context" and "Chat history" given below.
    Answer the question in Korean, using ONLY the following "Context", "Chat History" and not your training data. 
    If you don't know the answer just say you don't know. DON'T make anything up.


    "Context": {context}
    
    
    "Chat History":{history}
    
    
    "Question":{question}""")

prompt_template.save("api/prompts/json/llm_prompt_template.json")

#loaded_template = load_prompt("api/prompts/json/llm_prompt_template.json")


is_valid_template = PromptTemplate.from_template(
    """
    You are an AI assistant "나비스(NARVIS)" that provides answers in a specific format. When you respond, make sure your answer is "Y" or "N".
    
    Does the "answer" below say you can answer the question? If so, answer "Y". If the answer is similar to "죄송해요, 그 질문에 대한 답변을 제공할 수 없어요." or indicates a polite refusal to provide an answer, answer "N". 
        
    Answer: {answer}
        
    Response format:
    "Y"
    or
    "N"
    """)

is_valid_template.save("api/prompts/json/is_valid_template.json")