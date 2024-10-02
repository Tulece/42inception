# Utiliser Debian Bullseye comme base
FROM debian:bullseye

# Mettre à jour et installer NGINX
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Copier les fichiers du site statique
COPY static_site /var/www/html

# Configurer NGINX pour servir le site statique
COPY static_nginx.conf /etc/nginx/nginx.conf

# Exposer le port 8080
EXPOSE 8080

# Lancer NGINX
CMD ["nginx", "-g", "daemon off;"]
