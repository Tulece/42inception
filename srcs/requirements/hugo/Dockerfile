FROM debian:bullseye

# Mettre à jour les dépôts et installer Hugo et Nginx
RUN apt-get update && \
    apt-get install -y nginx curl && \
    curl -Lf https://github.com/gohugoio/hugo/releases/download/v0.134.3/hugo_extended_0.134.3_Linux-64bit.deb -o hugo.deb && \
    dpkg -i hugo.deb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* hugo.deb

# Copier les fichiers du site
COPY site/ /var/www/hugo/

# Copier le fichier de configuration Nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Exposer le port 80
EXPOSE 80

# Construire le site statique
RUN hugo -s /var/www/hugo/ -d /var/www/hugo/public

# Démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]
