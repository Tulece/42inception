# Utiliser Debian Bullseye comme base
FROM debian:bullseye

# Mettre à jour et installer MariaDB
RUN apt-get update && \
    apt-get install -y mariadb-server && \
    rm -rf /var/lib/apt/lists/*

# Créer le répertoire des données
RUN mkdir -p /var/lib/mysql /home/anporced/data/mariadb

# Copier le script de configuration
COPY my.cnf /etc/mysql/my.cnf

# Copier le script d'initialisation
COPY init_db.sh /init_db.sh

# Donner les permissions au script d'initialisation en tant que root
USER root
RUN chmod +x /init_db.sh

# Créer l'utilisateur mysql et donner les permissions sur les répertoires
RUN chown -R mysql:mysql /var/lib/mysql /home/anporced/data/mariadb

# Exposer le port MariaDB
EXPOSE 3306

# Créer le répertoire /var/run/mysqld et ajuster les permissions
RUN mkdir -p /var/run/mysqld && \
    chown mysql:mysql /var/run/mysqld

# Revenir à l'utilisateur mysql pour l'exécution de MariaDB
USER mysql

# Initialiser MariaDB et lancer le service
CMD ["/bin/bash", "/init_db.sh"]
