#!/bin/bash

# Crée l'utilisateur ftp (par exemple, wordpress)
useradd -m wordpress
echo "wordpress:password" | chpasswd

# Crée le fichier d'autorisation d'utilisateur pour vsftpd
echo "wordpress" > /etc/vsftpd.userlist
