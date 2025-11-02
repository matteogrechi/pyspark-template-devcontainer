FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install Java 17
RUN apt-get update \
    && apt-get install -y openjdk-17-jdk \
    && apt-get clean

# Install pip and venv
RUN apt-get update \
    && apt-get install -y \
        python3-pip \
        python3-venv \
    && apt-get clean

# Install Pre-commit system-wide
RUN pip install pre-commit --break-system-packages
