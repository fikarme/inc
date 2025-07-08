#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# If wp-config.php doesn't exist, it's a fresh install
if [ ! -f "/var/www/html/wp-config.php" ]; then
    echo "WordPress not found. Starting installation..."

    # Wait for MariaDB to be ready before proceeding.
    # This is a simple loop that checks if a connection can be made.
    until mariadb -h ${DB_HOST} -u ${DB_USER} -p"$(cat /run/secrets/db_pass)" -e "SELECT 1;" >/dev/null 2>&1; do
        echo "Waiting for MariaDB connection..."
        sleep 2
    done

    # Download WordPress core files
    wp core download --path=/var/www/html --allow-root

    # Create wp-config.php using variables from .env and secrets
    wp config create --path=/var/www/html \
        --dbname=${DB_NAME} \
        --dbuser=${DB_USER} \
        --dbpass="$(cat /run/secrets/db_pass)" \
        --dbhost=${DB_HOST} \
        --allow-root

    # Install WordPress
    wp core install --path=/var/www/html \
        --url=${WP_URL} \
        --title="${WP_TITLE}" \
        --admin_user=${WP_ADMIN_USER} \
        --admin_password="$(cat /run/secrets/wp_admin_pass)" \
        --admin_email=${WP_ADMIN_EMAIL} \
        --skip-email \
        --allow-root

    # Create the second, non-admin user
    wp user create --path=/var/www/html \
        ${WP_USER} ${WP_EMAIL} \
        --role=author \
        --user_pass="$(cat /run/secrets/wp_user_pass)" \
        --allow-root

    # Set secure permissions for wp-config.php
    chmod 600 /var/www/html/wp-config.php

    echo "WordPress installation complete."
else
    echo "WordPress is already installed. Skipping setup."
fi

# Fix file permissions for security on every start
chown -R www-data:www-data /var/www/html
find /var/www/html -type d -exec chmod 755 {} \;
find /var/www/html -type f -exec chmod 644 {} \;

echo "Permissions are set. Issa vibe."

# Now, start the main process (php-fpm)
# This is the key part: `exec "$@"` runs the CMD from the Dockerfile.
# This passes control to php-fpm, making it the main process (PID 1).
exec "$@"
