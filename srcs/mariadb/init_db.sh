#!/bin/bash

# Démarrer MariaDB
service mysql start

# Attendre que le serveur MariaDB soit prêt
until mysqladmin ping -h mariadb --silent; do
    echo "Waiting for database connection..."
    sleep 2
done

# Automatiser les étapes de création d'utilisateur et de base de données
mysql -u root <<EOF
ALTER USER 'root'@'localhost' IDENTIFIED BY 'Jakarta34';
FLUSH PRIVILEGES;
CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'wordpress'@'%' IDENTIFIED BY 'Jakarta34';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%';
FLUSH PRIVILEGES;
EOF

# Garder MariaDB en fonctionnement après l'initialisation
exec mysqld
