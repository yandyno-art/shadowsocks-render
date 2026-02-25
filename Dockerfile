FROM teddysun/shadowsocks-libev:latest

ENV SERVER_PORT=8388
ENV PASSWORD=miclave123
ENV METHOD=aes-256-gcm
ENV TIMEOUT=300
ENV DNS_ADDR=8.8.8.8

EXPOSE 8388/tcp 8388/udp

CMD ss-server -s 0.0.0.0 -p ${SERVER_PORT} -k ${PASSWORD} -m ${METHOD} -t ${TIMEOUT} --fast-open -d ${DNS_ADDR}
