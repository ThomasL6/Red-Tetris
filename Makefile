NAME					=	red_tetris

DOCKER_COMPOSE_CMD		=	docker-compose
DOCKER_COMPOSE_PATH		=	docker-compose.yml


all:
	@echo "🚀 Démarrage du projet Red Tetris..."
	$(DOCKER_COMPOSE_CMD) -f $(DOCKER_COMPOSE_PATH) up --build -d

stop:
	$(DOCKER_COMPOSE_CMD) -f $(DOCKER_COMPOSE_PATH) stop

down:
	$(DOCKER_COMPOSE_CMD) -f $(DOCKER_COMPOSE_PATH) down

clean:
	$(DOCKER_COMPOSE_CMD) -f $(DOCKER_COMPOSE_PATH) down -v
	@echo "🧼 Données et volumes supprimés."

re: down
	$(DOCKER_COMPOSE_CMD) -f $(DOCKER_COMPOSE_PATH) build --no-cache
	$(DOCKER_COMPOSE_CMD) -f $(DOCKER_COMPOSE_PATH) up -d

logs:
	$(DOCKER_COMPOSE_CMD) -f $(DOCKER_COMPOSE_PATH) logs -f red_tetris

