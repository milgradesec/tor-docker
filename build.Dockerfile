FROM alpine:3.14.2

RUN apk --update --no-cache add \
    ca-certificates \
    tor

EXPOSE 9001
USER tor

ENTRYPOINT ["tor"]
