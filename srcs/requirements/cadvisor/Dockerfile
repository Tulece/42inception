FROM debian:bullseye

# Télécharger cAdvisor binaire
RUN apt-get update && \
    apt-get install -y wget && \
    wget https://github.com/google/cadvisor/releases/download/v0.XX.X/cadvisor -O /usr/local/bin/cadvisor && \
    chmod +x /usr/local/bin/cadvisor && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Exposer le port cAdvisor
EXPOSE 8080

# Démarrer cAdvisor
CMD ["cadvisor", "--port=8080"]
