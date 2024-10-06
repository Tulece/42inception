# srcs/requirements/ftp/Dockerfile
FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y vsftpd && \
    apt-get clean

# Créer le répertoire chroot manquant
RUN mkdir -p /var/run/vsftpd/empty

# Copier la configuration vsftpd
COPY conf/vsftpd.conf /etc/vsftpd.conf

# Créer la liste des utilisateurs FTP
RUN echo "wordpress" > /etc/vsftpd.userlist

CMD ["/usr/sbin/vsftpd", "/etc/vsftpd.conf"]
