CMP	= ./srcs/docker-compose.yml
USR	= akdemir
DIR	= /home/$(USR)/data

all: up

build:
	mkdir -p $(DIR)/wordpress
	mkdir -p $(DIR)/mariadb
	docker-compose -f $(CMP) build

up: build
	docker-compose -f $(CMP) up -d

down:
	docker-compose -f $(CMP) down

stop:
	docker-compose -f $(CMP) stop

start:
	docker-compose -f $(CMP) start

clean: down
	docker system prune -af
	docker volume prune -af

fclean:
	docker-compose -f $(CMP) down --volumes --rmi all
	sudo rm -rf $(DIR)

re: fclean all

logs:
	docker-compose -f $(CMP) logs

nuke:
	- sudo rm -rf $(DIR)
	- docker stop $$(docker ps -qa)
	- docker rm $$(docker ps -qa)
	- docker rmi -f $$(docker images --format '{{.Repository}}' | grep -v 'debian' | xargs -r docker images -q)
	- docker volume rm $$(docker volume ls -q)
	- docker network rm $$(docker network ls -q)

status:
	docker ps -a
	docker images
	docker volume ls
	docker network ls

.PHONY: all build up down stop start fclean re logs nuke status
