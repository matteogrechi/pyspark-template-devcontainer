FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install Java 17
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get clean

# Install pip, venv, and pipx
RUN apt-get update && \
    apt-get install -y python3-pip python3-venv && \
    apt-get clean

# Install PySpark
RUN pip install pyspark --break-system-packages
