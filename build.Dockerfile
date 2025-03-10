FROM alpine:3.21.3

ARG TOR_VERSION

RUN apk update && \
    apk upgrade && \
    apk add \ 
    --no-cache \
    --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community/ \
    tor

EXPOSE 9001

USER tor
ENTRYPOINT ["tor"]
