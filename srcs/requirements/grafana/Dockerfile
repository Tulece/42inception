FROM debian:bullseye

# Mettre à jour les dépôts et installer les dépendances
RUN apt-get update && \
    apt-get install -y apt-transport-https software-properties-common wget && \
    wget -q -O - https://packages.grafana.com/gpg.key | apt-key add - && \
    echo "deb https://packages.grafana.com/oss/deb stable main" | tee /etc/apt/sources.list.d/grafana.list && \
    apt-get update && \
    apt-get install -y grafana && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copier la configuration personnalisée si nécessaire
COPY conf/grafana.ini /etc/grafana/grafana.ini

# Exposer le port Grafana
EXPOSE 3000

# Activer et démarrer Grafana
CMD ["/usr/sbin/grafana-server", "--homepath=/usr/share/grafana", "--config=/etc/grafana/grafana.ini"]
