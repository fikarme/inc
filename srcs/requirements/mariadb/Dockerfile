#// filepath: /home/fikarme/inc/srcs/requirements/mariadb/Dockerfile
# Use the penultimate stable version of Debian
FROM debian:bullseye

# Update packages and install MariaDB server
RUN apt-get update && \
    apt-get install -y mariadb-server && \
    rm -rf /var/lib/apt/lists/*

# Copy the custom MariaDB configuration file
# This is key to allowing connections from other containers
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# Expose the default MySQL/MariaDB port
EXPOSE 3306

# The default entrypoint of the base image will handle DB initialization.
# We just need to make sure it runs as the mysql user.
USER mysql

# The default command will start the server.
CMD ["mysqld_safe"]
