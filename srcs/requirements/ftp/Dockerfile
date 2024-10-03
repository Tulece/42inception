FROM debian:bullseye

# Mettre à jour les dépôts et installer vsftpd
RUN apt-get update && \
    apt-get install -y vsftpd && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copier le fichier de configuration vsftpd
COPY conf/vsftpd.conf /etc/vsftpd.conf

# Ajouter les scripts d'initialisation si nécessaire
COPY tool/ftp_init.sh /usr/local/bin/ftp_init.sh
RUN chmod +x /usr/local/bin/ftp_init.sh

# Exposer le port FTP
EXPOSE 21

# Démarrer vsftpd
CMD ["/usr/local/bin/ftp_init.sh"]
