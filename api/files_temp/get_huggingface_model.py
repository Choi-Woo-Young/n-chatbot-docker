## hugging face 모델 로컬로 다운로드 시 모델명과 경로 지정하고 본 파일만 실행할 것
from transformers import AutoModel, AutoTokenizer

model_name = "intfloat/multilingual-e5-small"

# 토크나이저와 모델 다운로드
tokenizer = AutoTokenizer.from_pretrained(model_name)
model = AutoModel.from_pretrained(model_name)

# 모델과 토크나이저를 로컬 디렉토리에 저장
model.save_pretrained("./huggingface_model/multilingual-e5-small")
tokenizer.save_pretrained("./huggingface_model/multilingual-e5-small")
