all: up

up:
	docker-compose up -d --build

down:
	docker-compose down

restart:
	docker-compose restart

clean:
	docker-compose down -v --rmi all
	docker system prune -f
