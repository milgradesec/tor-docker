FROM alpine:3.15.0

ARG TOR_VERSION

RUN apk update && \
    apk upgrade && \
    apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community/ \
    tor=${TOR_VERSION}-r1

EXPOSE 9001

USER tor
ENTRYPOINT ["tor"]
