# Utiliser Debian Bullseye comme base
FROM debian:bullseye

# Mettre à jour et installer vsftpd
RUN apt-get update && \
    apt-get install -y vsftpd && \
    rm -rf /var/lib/apt/lists/*

# Créer un utilisateur FTP
RUN useradd -m anporced && echo "anporced:password" | chpasswd

# Configurer vsftpd
COPY vsftpd.conf /etc/vsftpd.conf

# Exposer les ports FTP
EXPOSE 20 21 21100-21110

# Créer les répertoires de données
RUN mkdir -p /home/anporced/data/ftp

# Définir les permissions
RUN chown -R anporced:anporced /home/anporced/data/ftp

# Lancer vsftpd
CMD ["/usr/sbin/vsftpd", "/etc/vsftpd.conf"]
