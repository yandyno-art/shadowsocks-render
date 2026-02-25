FROM ubuntu:22.04

RUN apt-get update && apt-get install -y shadowsocks-libev

EXPOSE 8080

CMD ["ss-server", "-s", "0.0.0.0", "-p", "8080", "-k", "miclave123", "-m", "aes-256-gcm"]
