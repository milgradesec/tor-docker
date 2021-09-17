FROM alpine:3.14.2

RUN apk update && \
    apk add --no-cache ca-certificates \
    tor=0.4.5.10-r0

EXPOSE 9001
USER tor

ENTRYPOINT ["tor"]
