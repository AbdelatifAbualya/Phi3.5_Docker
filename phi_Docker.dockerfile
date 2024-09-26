# Use the official vLLM image as the base
FROM runpod/worker-vllm:stable-cuda11.8.0

# Install scipy
RUN pip install scipy

# Set the model name as an environment variable
ENV MODEL_NAME="microsoft/phi-3-small"

# Set the vLLM arguments as an environment variable
ENV VLLM_ARGS="--trust-remote-code --max-model-len 8192"

# The CMD is inherited from the base image, so we don't need to specify it again