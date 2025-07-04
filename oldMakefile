all : up

build :
	mkdir -p /home/akdemir/data
	mkdir /home/akdemir/data/wordpress
	mkdir /home/akdemir/data/mariadb
	docker-compose -f ./srcs/docker-compose.yml build

up :
	docker-compose -f ./srcs/docker-compose.yml up -d
#	-d	DETACHED runs containers in detached mode (in the background)
#	-f	FILE specifies the compose file location

down :
	docker-compose -f ./srcs/docker-compose.yml down

start :
	docker-compose -f ./srcs/docker-compose.yml start

stop :
	docker-compose -f ./srcs/docker-compose.yml stop

clean : down
	docker system prune -af
	docker volume prune -af
#	-af		force removes all unused images, not just dangling ones

fclean :
	sudo rm -rf /home/akdemir/data/wordpress
	sudo rm -rf /home/akdemir/data/mariadb
	sudo rm -rf /home/akdemir/data
	docker stop $$(docker ps -qa)
#	docker ps	PROCESS STATUS, lists running containers
#	$$	escapes $ so it passes a literal $ to the shell
#	2>/dev/null	suppresses error messages if no containers are running
#	|| true		if there are no containers to stop make file continue without error

	docker rm $$(docker ps -qa)
# rm -f is better? cuz
#	-q	QUIET only lists container IDs (12 char hash)
#	-a	ALL lists all containers (including build cache layers)

	docker rmi -f $$(docker images -qa)
#	-f	FORCE 	remove images with dependencies
#	without -f, Docker will refuse to remove images that have dependent containers
#	(even stopped ones) or are referenced by other images

	docker volume rm $$(docker volume ls -q)
#

	docker network rm $$(docker network ls -q)
#docker network rm $$(docker network ls -q | grep -v -E 'bridge|host|none')
#	default networks like bridge, host, and none cannot be removed
#	bridge is the default network for containers
#	host allows containers to share the host's network stack
#	none provides a container with no network connectivity

re : fclean all

status :
	docker ps -a

restart : stop start

events :
	docker events --filter 'event=start' --filter 'event=stop' --filter 'event=die'

logs :
	docker-compose -f ./srcs/docker-compose.yml logs

.PHONY: all up down stop start clean fclean re restart status events logs build
