# Dockerfile
FROM ubuntu:22.04

# Install dependencies
RUN apt update && \
    apt install -y curl sudo gnupg && \
    curl -fsSL https://inference.supply/install.sh | sh

# Default command, override with CMD
CMD ["bash"]
