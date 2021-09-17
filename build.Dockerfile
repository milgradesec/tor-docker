FROM alpine:3.14.2

ARG TOR_VERSION

RUN apk update && \
    apk add --no-cache ca-certificates \
    tor=${TOR_VERSION}-r0

EXPOSE 9001
USER tor

ENTRYPOINT ["tor"]
