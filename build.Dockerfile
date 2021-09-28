FROM alpine:3.14.2

ARG TOR_VERSION

RUN apk update && \
    apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community/ \
        tor=${TOR_VERSION}-r0

EXPOSE 9001

USER tor
ENTRYPOINT ["tor"]
