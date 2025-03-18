from langchain_core.prompts import PromptTemplate


self_service_yn_prompt_template = PromptTemplate.from_template(
    """
    You are an AI assistant that provides answers in a specific format. When you respond, make sure your answer "Y" or "N"
    
    
    Here is the question you need to answer.
    Is the question below related to password initialization or password loss? If it is, answer "Y". If not, answer "N" : 
    
     Question: {question}
    
    Response format:
    "Y"
    or
    "N"
    

    Remember, your response should be in Korean and answer "Y" or "N" only.
    Do not include any extra text or characters outside of this structure.
""")

self_service_yn_prompt_template.save("api/prompts/json/self_service_yn_prompt_template.json")




self_service_cd_prompt_template = PromptTemplate.from_template(
    """
    Respond with the service code related to the "Question" below.
    The service code must be found within the "Service Information" below.
    If there is no relevant service, respond with "NA".
    Make sure to respond only with the service code.
    Your answer must be in Korean.

    "Service Information":
    | Service Code | Related Service Name |
    | NICE_NGROUPWARE_SVC | Internal Groupware, 내부 그룹웨어, 내부그룹웨어, Groupware |
    | NICE_HGROUPWARE_SVC | External Groupware, 외부 그룹웨어, 외부그룹웨어 |
    | NICE_WEBMAIL_SVC | Webmail, 내부메일, 내부 메일, 내부 mail |

    "Question": {question}

    Response format:
    "NICE_NGROUPWARE_SVC"
    or
    "NICE_HGROUPWARE_SVC"
    or
    "NICE_WEBMAIL_SVC"
    or
    "NA"
    
    
    Remember,  Do not include any extra text or characters or Explanation or additional text in your response.
    """)

self_service_cd_prompt_template.save("api/prompts/json/self_service_cd_prompt_template.json")