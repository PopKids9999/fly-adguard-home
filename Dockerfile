FROM adguard/adguardhome

# 53     : TCP, UDP : DNS
# 80     : TCP      : HTTP (main)
# 443    : TCP, UDP : HTTPS
# 853    : TCP, UDP : DNS-over-QUIC
# 3000   : TCP, UDP : HTTP(S) (alt, incl. HTTP/3)
#EXPOSE 53/tcp 53/udp 80/tcp 443/tcp 443/udp 853/tcp 853/udp 3000/tcp 3000/udp

RUN mkdir -p /data/{conf,work} && \
    ln -s /data/conf /opt/adguardhome/conf && \
    ln -s /data/work /opt/adguardhome/work

COPY ./AdGuardHome.yaml /opt/adguardhome/conf/AdGuardHome.yaml