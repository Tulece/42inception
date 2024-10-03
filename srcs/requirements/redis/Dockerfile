FROM debian:bullseye

# Mettre à jour les dépôts et installer Redis
RUN apt-get update && \
    apt-get install -y redis-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copier le fichier de configuration personnalisé si nécessaire
COPY conf/redis.conf /etc/redis/redis.conf

# Exposer le port Redis
EXPOSE 6379

# Démarrer Redis en mode daemon off
CMD ["redis-server", "/etc/redis/redis.conf"]
