from langchain_core.prompts import PromptTemplate


extract_service_cd_prompt_template = PromptTemplate.from_template(
    """
    The following are a user's utterance and a list of available services. Select the one service that is most relevant to the user's utterance. If none of the services are relevant, respond with "N/A".

    User Utterance: {utterance}

    Service List:
    {service_list}

    Response Format: 
    {service_cd_list} 
    or  "N/A"
   
""")

extract_service_cd_prompt_template.save(
    "api/prompts/json/extract_service_cd_prompt.json")


convert_utterance_into_question_prompt_template = PromptTemplate.from_template(
    """
    # Role
    You are a translator whose task is to understand the user's intent and transform the utterance they input into the chatbot into a specific request. 
    Your goal is to accurately interpret the user's meaning and convert their general utterance into a concrete and actionable request without altering the context.

    # Instruction
    - Analyze the user's utterance, which was input into the chatbot, and rephrase it as a clear and specific request based on their intent.
    - If the intent is unclear or ambiguous, ask the user for additional information to clarify their meaning.
    - Do not add any extra text or commentary—your output should only be the rephrased request based on the user's input.
    - Maintain the original context and tone when converting the utterance into a specific request.

    # Context
    - Utterance: {utterance}

    # Constraints
    - Do not include any extra text or characters outside of the rephrased request.
    - **Do not include the original utterance in the rephrased request.**
    - If the intent is unclear, do not guess—ask for clarification from the user in a polite and concise manner.
    - Always ensure the response is structured as a specific request based on the user's original intent.

    # Example 1
    - 사용자의 발화: "로그인 오류남."
    - 변환 후: "로그인 오류나는데 원인과 해결방법을 알려줘."

    # Example 2
    - 사용자의 발화: "결재선 지정 방법을 모르겠어."
    - 변환 후: "결재선 지정 방법을 알려줘."
    """)

convert_utterance_into_question_prompt_template.save(
    "api/prompts/json/convert_utterance_into_question_prompt.json")
