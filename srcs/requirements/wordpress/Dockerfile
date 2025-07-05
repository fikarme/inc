# Use the penultimate stable version of Debian
FROM debian:bullseye

# Install necessary packages: PHP-FPM, MariaDB client (for DB connection), curl, and wp-cli dependencies
RUN apt-get update && \
    apt-get install -y php-fpm php-mysql curl && \
    rm -rf /var/lib/apt/lists/*

# Download and install wp-cli, the WordPress command-line tool
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

# Create the directory for WordPress files
RUN mkdir -p /var/www/html

# Copy the setup script that will configure WordPress
COPY ./tools/setup.sh /usr/local/bin/setup.sh
RUN chmod +x /usr/local/bin/setup.sh

# Expose the port PHP-FPM listens on
EXPOSE 9000

# Run the setup script as the entrypoint
ENTRYPOINT ["/usr/local/bin/setup.sh"]

# The command to run PHP-FPM in the foreground (no infinite loops!)
CMD ["php-fpm7.4", "-F"]
