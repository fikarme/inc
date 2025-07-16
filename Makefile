CMP	= ./srcs/docker-compose.yml
DCR	= docker-compose
USR	= fi
DIR	= /home/$(USR)/data
DMN = $(USR).42.fr

all: up

build:
	sudo rm -rf $(DIR)
	mkdir -p $(DIR)/wordpress $(DIR)/mariadb
	sudo chown -R $(USR):$(USR) $(DIR)
	sudo chmod -R 755 $(DIR)
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
	- docker rmi -f $$(docker images -q --filter "dangling=true")
	- docker images --format "table {{.Repository}}:{{.Tag}}\t{{.ID}}" | grep -v "debian" | awk 'NR>1 {print $$2}' | xargs -r docker rmi -f
	- docker volume rm $$(docker volume ls -q)
	- docker network rm $$(docker network ls -q | grep -v -E "bridge|host|none")

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

debug:
	docker volume inspect srcs_wordpressVol || echo "Volume not found"
	docker volume inspect srcs_mariadbVol || echo "Volume not found"
	$(DCR) -f $(CMP) config

wpdebug:
	docker logs wordpress --tail 50
	docker exec wordpress ls -la /var/www/html/ || echo "WordPress container not running"
	docker exec wordpress ps aux | grep php || echo "No PHP processes"

perms:
	sudo chown -R $(USR):$(USR) $(DIR)
	sudo chmod -R 755 $(DIR)

chat:
	curl -k https://akdemir.42.fr/
	- docker exec mariadb mysql -u root -pmeys -e "SHOW DATABASES;"
	- docker exec mariadb mysql -u fi -pmeys -e "SHOW DATABASES;"
	- docker exec wordpress mysql -h mariadb -u fi -pmeys -e "SELECT 1;"
	- docker exec mariadb ss -tlnp | grep 3306
	- docker exec wordpress nc -zv mariadb 3306

.PHONY: all build up down stop start fclean re logs nuke status test addhost debug perms
