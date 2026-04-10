FROM vllm/vllm-openai:latest

RUN pip install --upgrade pip
RUN pip install --upgrade transformers accelerate sentencepiece
RUN pip install git+https://github.com/huggingface/transformers.git

ENV HF_HOME=/workspace/.cache/huggingface
