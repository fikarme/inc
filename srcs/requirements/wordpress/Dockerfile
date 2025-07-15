# Use the penultimate stable version of Debian
FROM debian:bullseye

# Tell debconf to not be interactive.
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages in one go. More efficient, less layers.
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    php-fpm \
    php-mysql \
    curl \
    ca-certificates \
    mariadb-client \
    netcat-openbsd && \
    rm -rf /var/lib/apt/lists/*

# Download and install wp-cli, the WordPress command-line tool
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

# Create the directory for WordPress files
RUN mkdir -p /var/www/html

# Copy the custom PHP-FPM pool configuration. This is the glow-up.
COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

# Copy the setup script that will configure WordPress
COPY ./tools/setup.sh /usr/local/bin/setup.sh
RUN chmod +x /usr/local/bin/setup.sh

# Expose the port PHP-FPM listens on
EXPOSE 9000

# Run the setup script as the entrypoint
ENTRYPOINT ["/usr/local/bin/setup.sh"]

# The command to run PHP-FPM in the foreground (no infinite loops!)
CMD ["php-fpm7.4", "-F"]
