FROM debian:bullseye

# Installer Apache et PHP
RUN apt-get update && \
    apt-get install -y apache2 php php-mbstring php-xml php-curl php-zip php-mysql wget && \
    apt-get clean

# Télécharger Adminer
RUN wget "https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php" -O /var/www/html/adminer.php

# Configurer Apache pour écouter sur le port 8080 et servir Adminer
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf && \
    sed -i 's/Listen 80/Listen 8080/' /etc/apache2/ports.conf && \
    sed -i 's/:80>/:8080>/' /etc/apache2/sites-available/000-default.conf && \
    a2enmod rewrite

# Exposer le port 8080
EXPOSE 8080

# Lancer Apache en mode premier plan
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
