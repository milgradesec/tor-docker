FROM alpine:3.13

RUN apk update && apk upgrade && \
    apk add --no-cache ca-certificates tor

EXPOSE 9001
USER tor

ENTRYPOINT ["tor"]
