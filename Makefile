CMP	= ./srcs/docker-compose.yml
DCR	= docker compose
USR	= akdemir
DIR	= /home/$(USR)/data

all: up

build:
	mkdir -p $(DIR)/wordpress
	mkdir -p $(DIR)/mariadb
	$(DCR) -f $(CMP) build

up: build
	$(DCR) -f $(CMP) up -d

down:
	$(DCR) -f $(CMP) down

stop:
	$(DCR) -f $(CMP) stop

start:
	$(DCR) -f $(CMP) start

clean: down
	docker system prune -af
	docker volume prune -af

fclean:
	$(DCR) -f $(CMP) down --volumes --rmi all
	sudo rm -rf $(DIR)

re: fclean all

logs:
	$(DCR) -f $(CMP) logs

nuke:
	- sudo rm -rf $(DIR)
	- docker stop $$(docker ps -qa)
	- docker rm $$(docker ps -qa)
#	- docker rmi -f $$(docker images -qa)
	- docker rmi -f $$(docker images --format '{{.Repository}}' | grep -v 'debian' | xargs -r docker images -q)
	- docker volume rm $$(docker volume ls -q)
	- docker network rm $$(docker network ls -q)

status:
	docker ps -a
	docker images
	docker volume ls
	docker network ls

.PHONY: all build up down stop start fclean re logs nuke status
