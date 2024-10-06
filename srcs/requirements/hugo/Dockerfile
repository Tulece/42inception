# srcs/requirements/hugo/Dockerfile
FROM debian:bullseye

# Installer les dépendances nécessaires
RUN apt-get update && \
    apt-get install -y wget git gcc g++ make tar && \
    apt-get clean

# Installer une version plus récente de Go
RUN wget https://golang.org/dl/go1.23.0.linux-arm64.tar.gz -O go.tar.gz && \
    tar -C /usr/local -xzf go.tar.gz && \
    rm go.tar.gz

# Configurer le PATH pour Go
ENV PATH="/usr/local/go/bin:${PATH}"

# Télécharger et compiler Hugo
RUN git clone --branch v0.135.0 https://github.com/gohugoio/hugo.git /hugo && \
    cd /hugo && \
    go install --tags extended

# Déplacer Hugo dans le répertoire binaire
RUN cp /root/go/bin/hugo /usr/local/bin/hugo

# Définir le répertoire de travail
WORKDIR /site

# Copier la configuration Hugo dans le conteneur
COPY conf /site

# Télécharger le thème Ananke
RUN mkdir -p /site/themes && \
    wget https://github.com/theNewDynamic/gohugo-theme-ananke/archive/refs/heads/master.zip -O ananke.zip && \
    apt-get install -y unzip && \
    unzip ananke.zip -d /site/themes && \
    mv /site/themes/gohugo-theme-ananke-master /site/themes/ananke && \
    rm ananke.zip

# Construire le site Hugo
RUN hugo

# Exposer le port par défaut de Hugo
CMD ["hugo", "server", "--bind=0.0.0.0"]
