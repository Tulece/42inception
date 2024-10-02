# Variables
DOCKER_COMPOSE = docker-compose
DOCKER_COMPOSE_FILE = docker-compose.yml

# Règles
all: up

# Build et démarre les services
up:
	$(DOCKER_COMPOSE) up -d --build

# Stop les services
down:
	$(DOCKER_COMPOSE) down

# Supprime les conteneurs, volumes, et réseaux Docker
clean:
	$(DOCKER_COMPOSE) down --rmi all --volumes --remove-orphans

# Rebuild à partir de zéro (sans utiliser le cache) et démarre les services
rebuild:
	$(DOCKER_COMPOSE) down --rmi all --volumes --remove-orphans
	$(DOCKER_COMPOSE) build --no-cache
	$(DOCKER_COMPOSE) up -d

# Visualise les logs des conteneurs
logs:
	$(DOCKER_COMPOSE) logs -f

# Restart les services
restart:
	$(DOCKER_COMPOSE) restart

# Affiche l'état des services
status:
	$(DOCKER_COMPOSE) ps

.PHONY: all up down clean rebuild logs restart status
