FROM debian:bullseye

RUN apt update && apt install -y curl less build-essential
WORKDIR /var/app

RUN mkdir -p unisonlanguage && \
    curl -# -L https://github.com/unisonweb/unison/releases/download/M2-Linux/unison-Linux.tar.gz --output unisonlanguage/ucm.tar.gz && \
    tar -xzf unisonlanguage/ucm.tar.gz -C unisonlanguage
