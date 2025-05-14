FROM alpine:latest

WORKDIR /app
COPY bin/ /app/bin/
RUN chmod +x /app/bin/*

RUN apk add --no-cache jq

EXPOSE 80

CMD ["/app/bin/core-service"]