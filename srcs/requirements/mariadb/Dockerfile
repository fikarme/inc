# Use the penultimate stable version of Debian
FROM debian:bullseye

# Tell debconf to not be interactive.
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages in one go. More efficient, less layers.
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    php-fpm \
    php-mysql \
    mariadb-server \
    mariadb-client \
    gettext-base \
    curl \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /run/mysqld && \
    chown mysql:mysql /run/mysqld

# Copy the custom MariaDB configuration file
COPY ./conf/50-server.conf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod 644 /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/init.sql /tmp/set.sql
RUN chmod 644 /tmp/set.sql

# Copy the setup script
COPY ./tools/setup.sh /usr/local/bin/setup.sh
RUN chmod +x /usr/local/bin/setup.sh

# Expose the default MySQL/MariaDB port
EXPOSE 3306

# Run the setup script as the entrypoint
ENTRYPOINT ["/usr/local/bin/setup.sh"]

# The command to run MariaDB in the foreground
CMD ["mysqld_safe"]
