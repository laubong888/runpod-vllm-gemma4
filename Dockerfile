FROM vllm/vllm-openai:latest

RUN pip uninstall -y transformers huggingface_hub

RUN pip install --upgrade pip
RUN pip install --no-cache-dir \
    git+https://github.com/huggingface/transformers.git \
    accelerate \
    sentencepiece

ENV HF_HOME=/workspace/.cache/huggingface
