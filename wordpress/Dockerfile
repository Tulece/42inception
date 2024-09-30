FROM wordpress:php8.0-fpm

# Installer les extensions PHP nécessaires
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Installer l'extension Redis si vous utilisez Redis
RUN pecl install redis && docker-php-ext-enable redis

CMD ["php-fpm"]
