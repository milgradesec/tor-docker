FROM alpine:3.14.0

RUN echo '@edge https://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories && \
    apk update && \
    apk add --no-cache ca-certificates tor@edge

EXPOSE 9001
USER tor

ENTRYPOINT ["tor"]
