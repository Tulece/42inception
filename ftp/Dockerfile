FROM alpine:latest

RUN apk update && \
    apk add vsftpd && \
    adduser -D -h /home/vsftpd -s /sbin/nologin vsftpd && \
    echo "vsftpd:your_password" | chpasswd && \
    mkdir -p /home/vsftpd && \
    chown -R vsftpd:vsftpd /home/vsftpd

COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

CMD ["/usr/sbin/vsftpd", "/etc/vsftpd/vsftpd.conf"]
