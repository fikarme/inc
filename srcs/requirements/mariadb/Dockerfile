# Use the penultimate stable version of Debian
FROM debian:bullseye

# Update packages and install MariaDB server & client
RUN apt-get update && \
    apt-get install -y mariadb-server mariadb-client && \
    rm -rf /var/lib/apt/lists/*

# Copy the custom MariaDB configuration file
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# Copy the setup script
COPY ./tools/setup.sh /usr/local/bin/setup.sh
RUN chmod +x /usr/local/bin/setup.sh

# Expose the default MySQL/MariaDB port
EXPOSE 3306

# Run the setup script as the entrypoint
ENTRYPOINT ["/usr/local/bin/setup.sh"]

# The command to run MariaDB in the foreground
CMD ["mysqld_safe"]
