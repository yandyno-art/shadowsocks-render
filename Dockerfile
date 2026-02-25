FROM teddysun/shadowsocks-libev

ENV PASSWORD=miclave123
ENV METHOD=aes-256-gcm

EXPOSE 8388/tcp 8388/udp

CMD ss-server -s 0.0.0.0 -p 8388 -k ${PASSWORD} -m ${METHOD} --fast-open
