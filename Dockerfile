FROM vllm/vllm-openai:latest

# ✅ 安裝 git（關鍵）
RUN apt-get update && apt-get install -y git

# 清舊版本
RUN pip uninstall -y transformers huggingface_hub

# 升級 pip
RUN pip install --upgrade pip

# 裝最新 transformers（支援 gemma4）
RUN pip install --no-cache-dir \
    git+https://github.com/huggingface/transformers.git \
    accelerate \
    sentencepiece

ENV HF_HOME=/workspace/.cache/huggingface
