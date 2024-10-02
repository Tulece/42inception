# Utiliser Debian Bullseye comme base
FROM debian:bullseye

# Mettre à jour et installer NGINX
RUN apt-get update && \
    apt-get install -y nginx openssl && \
    rm -rf /var/lib/apt/lists/*

# Créer les répertoires nécessaires
RUN mkdir -p /etc/nginx/ssl /var/www/html

# Copier les configurations NGINX personnalisées
COPY nginx.conf /etc/nginx/nginx.conf

# Générer des certificats auto-signés pour TLS 1.2 et 1.3
RUN openssl req -x509 -nodes -days 365 \
    -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/C=FR/ST=IDF/L=Paris/O=42School/OU=anporced/CN=localhost"

# Exposer le port 443
EXPOSE 443

# Commande pour démarrer NGINX
CMD ["nginx", "-g", "daemon off;"]
