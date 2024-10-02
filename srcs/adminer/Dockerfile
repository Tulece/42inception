# Utiliser Debian Bullseye comme base
FROM debian:bullseye

# Mettre à jour et installer PHP et Apache
RUN apt-get update && \
    apt-get install -y apache2 php libapache2-mod-php wget && \
    rm -rf /var/lib/apt/lists/*

# Télécharger Adminer
RUN wget "https://www.adminer.org/latest.php" -O /var/www/html/adminer.php

# Configurer Apache
COPY adminer.conf /etc/apache2/sites-available/000-default.conf

# Activer les modules nécessaires
RUN a2enmod php7.4

# Exposer le port 8081
EXPOSE 8081

# Lancer Apache
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
