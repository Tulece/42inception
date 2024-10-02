# Utiliser Debian Bullseye comme base
FROM debian:bullseye

# Mettre à jour et installer PHP-FPM et extensions nécessaires
RUN apt-get update && \
    apt-get install -y php-fpm php-mysql && \
    rm -rf /var/lib/apt/lists/*

# Configurer PHP-FPM
COPY www.conf /etc/php/7.4/fpm/pool.d/www.conf

# Créer les répertoires nécessaires
RUN mkdir -p /var/www/html /home/anporced/data/wordpress /run/php && \
    chown -R www-data:www-data /var/www/html /home/anporced/data/wordpress /run/php

# Copier les fichiers WordPress
COPY wordpress/ /var/www/html/

# Définir les permissions
RUN chown -R www-data:www-data /var/www/html

# Exposer le port PHP-FPM
EXPOSE 9000

# Lancer PHP-FPM
CMD ["php-fpm7.4", "-F"]
