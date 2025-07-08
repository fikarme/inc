CMP	= ./srcs/docker-compose.yml
DCR	= docker compose
USR	= akdemir
DIR	= /home/$(USR)/data
DMN = $(USR).42.fr

all: up

build:
	mkdir -p $(DIR)/wordpress
	mkdir -p $(DIR)/mariadb
	chown -R $(USR):$(USR) $(DIR)
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

test:
	@curl -k -s -o /dev/null -w "Status: %{http_code}\n" https://$(DMN)/ || echo "❌ NGINX test failed"
	@curl -k -s https://$(DMN)/ | grep -q "WordPress\|wp-" && echo "✅ WordPress detected" || echo "❌ WordPress test failed"
	@$(DCR) -f srcs/docker-compose.yml ps | grep -q "Up" && echo "✅ Containers running" || echo "❌ Container test failed"
	@$(DCR) -f srcs/docker-compose.yml config -q && echo "✅ docker-compose.yml is valid" || echo "❌ docker-compose.yml validation failed"

addhost:
	@if ! grep -q "$(DMN)" /etc/hosts; then \
		sudo sed -i.bak "/\s$(DMN)$$/d" /etc/hosts; \
		echo "127.0.0.1 $(DMN)" | sudo tee -a /etc/hosts > /dev/null; \
	fi

.PHONY: all build up down stop start fclean re logs nuke status test addhost
