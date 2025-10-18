FROM --platform=linux/amd64 ubuntu:22.04
RUN apt update && apt install -y curl tar && rm -rf /var/lib/apt/lists/*
ARG MONAD_URL
RUN curl -L -o /tmp/monad.tar.gz "$MONAD_URL" \
    && tar -xzf /tmp/monad.tar.gz -C /usr/local/bin \
    && rm /tmp/monad.tar.gz
RUN useradd -m monad
USER monad
WORKDIR /home/monad
EXPOSE 26656 26657 8545 8546
ENTRYPOINT ["monad"]
