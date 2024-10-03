#!/bin/bash

# Créer un utilisateur FTP
useradd -m ftpuser -p $(openssl passwd -1 ftppassword) -s /bin/bash
mkdir -p /var/www/html
chown -R ftpuser:ftpuser /var/www/html

# Démarrer vsftpd
/usr/sbin/vsftpd /etc/vsftpd.conf
