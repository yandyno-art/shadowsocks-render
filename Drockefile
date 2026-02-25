FROM alpine:latest

RUN apk add --no-cache shadowsocks-libev

EXPOSE 8080

CMD ssserver -s 0.0.0.0 -p 8080 -k miclave123 -m aes-256-gcm
