# srcs/redis/Dockerfile

FROM debian:bullseye

# Installer les dépendances nécessaires
RUN apt-get update && \
    apt-get install -y redis-server && \
    rm -rf /var/lib/apt/lists/*

# Copier le fichier de configuration personnalisé
COPY redis.conf /etc/redis/redis.conf

# Exposer le port Redis par défaut
EXPOSE 6379

# Modifier le fichier de configuration pour utiliser le fichier redis.conf
CMD ["redis-server", "/etc/redis/redis.conf"]
