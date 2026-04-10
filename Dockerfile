FROM vllm/vllm-openai:latest

# install git
RUN apt-get update && apt-get install -y git

# 升級 pip
RUN pip install --upgrade pip

# ⚠️ 唔好 uninstall transformers
# 直接 override install
RUN pip install --no-cache-dir \
    git+https://github.com/huggingface/transformers.git \
    accelerate \
    sentencepiece

ENV HF_HOME=/workspace/.cache/huggingface
