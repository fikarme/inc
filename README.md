https://cdimage.debian.org/mirror/cdimage/archive/11.11.0/amd64/iso-cd/

su

sudo apt-get update && apt-get install make docker.io docker-compose

sudo apt update
sudo apt install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo docker run hello-world
docker compose version

mkdir test-docker && cd test-docker
echo -e "FROM debian:12\nCMD [\"echo\", \"Hello from Debian!\"]" > Dockerfile
docker build -t my-debian-test .
docker run my-debian-test

version: "3.9"
services:
  debian-test:
    image: debian:12
    command: ["echo", "Hello from Docker Compose!"]

docker images          # List locally available images
docker ps              # List running containers
docker ps -a           # List all containers (including stopped)
docker pull debian:12  # Download the Debian 12 image
docker run -it debian:12 bash  # Start a container interactively
docker stop <container_name_or_id>

----

make up: @docker-compose -f ./docker-compose.yml up -d
- Builds images (if needed).
- Creates containers (if not already created).
- Starts the containers (runs them in the background).
- Runs setup steps like making data directories.
- If containers/images don’t exist, it will create/download them.

make down: docker-compose -f ./docker-compose.yml down
- Stops all containers started by docker-compose.
- Removes those containers, networks, and by default, the default network and any anonymous volumes.
- You lose the containers (but not the data if it’s mounted to persistent volumes).

make stop: docker-compose -f ./docker-compose.yml stop
- Stops the running containers (pauses them).
- Does NOT remove the containers—they still exist and their state is preserved.

make start: docker-compose -f ./docker-compose.yml start
- Starts containers that were stopped (but not removed).
- Uses the existing containers/images; does not rebuild or download again.
