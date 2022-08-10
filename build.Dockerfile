FROM alpine:3.16.2

ARG TOR_VERSION

RUN apk update && \
    apk upgrade && \
    apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community/ \
    tor=${TOR_VERSION}-r1 zstd=1.5.2-r1

EXPOSE 9001

USER tor
ENTRYPOINT ["tor"]
