# Use the official vLLM image as the base
FROM runpod/worker-vllm:stable-cuda11.8.0

# Install scipy
RUN pip install scipy

# Set the model name as an environment variable
ENV MODEL_NAME="microsoft/Phi-3.5-mini-instruct"

# Set the vLLM arguments as an environment variable
ENV VLLM_ARGS="--trust-remote-code --max-model-len 8192"

# Keep the container running by adding an infinite sleep command
CMD ["bash", "-c", "sleep infinity"]
