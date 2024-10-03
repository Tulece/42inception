FROM debian:bullseye

# Mettre à jour les dépôts et installer Apache et PHP
RUN apt-get update && \
    apt-get install -y apache2 php libapache2-mod-php && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Télécharger Adminer
RUN mkdir /var/www/html/adminer && \
    curl -L https://www.adminer.org/latest.php -o /var/www/html/adminer/index.php

# Configurer Apache
COPY conf/apache.conf /etc/apache2/sites-available/000-default.conf

# Exposer le port 8080
EXPOSE 80

# Activer les modules nécessaires et démarrer Apache
RUN a2enmod rewrite && \
    service apache2 restart

CMD ["apache2ctl", "-D", "FOREGROUND"]
