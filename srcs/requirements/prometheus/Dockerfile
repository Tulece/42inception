FROM debian:bullseye

# Mettre à jour les dépôts et installer Prometheus
RUN apt-get update && \
    apt-get install -y wget tar && \
    wget https://github.com/prometheus/prometheus/releases/download/v2.24.1/prometheus-2.24.1.linux-amd64.tar.gz -O /tmp/prometheus.tar.gz && \
    tar -xzf /tmp/prometheus.tar.gz -C /usr/local/bin --strip-components=1 prometheus-2.24.1.linux-amd64/prometheus prometheus-2.XX.X.linux-amd64/promtool && \
    wget https://github.com/prometheus/prometheus/releases/download/v2.24.1/prometheus-2.24.1.linux-amd64/prometheus.yml -O /etc/prometheus/prometheus.yml && \
    chmod +x /usr/local/bin/prometheus /usr/local/bin/promtool && \
    rm -rf /tmp/prometheus.tar.gz prometheus-2.24.1.linux-amd64

# Exposer les ports Prometheus
EXPOSE 9090

# Définir le point d'entrée
CMD ["prometheus", "--config.file=/etc/prometheus/prometheus.yml"]
