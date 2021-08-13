FROM alpine:3.14.1

RUN apk --update --no-cache add \
    ca-certificates \
    tor

EXPOSE 9001
USER tor

ENTRYPOINT ["tor"]
