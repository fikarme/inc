#!/bin/sh

# Read the password from the secret file into a variable
WP_ADMIN_PASS=$(cat ../secrets/wp_admin_pass)

# Use the variable to create the admin user
wp user create ${WP_ADMIN_USER} ${WP_ADMIN_EMAIL} \
    --role=administrator \
    --user_pass=${WP_ADMIN_PASS} \
    --allow-root

# ... create the other user the same way ...

-------------------------------

#// filepath: /home/fikarme/inc/srcs/requirements/wordpress/tools/WPsetup.sh
#!/bin/bash

# Wait for MariaDB to be ready before proceeding.
# This is a simple loop that checks if a connection can be made.
until mariadb -h ${DB_HOST} -u ${DB_USER} -p${DB_PASS} -e "SELECT 1;" >/dev/null 2>&1; do
    echo "Waiting for MariaDB connection..."
    sleep 2
done

# Check if WordPress is already installed. If wp-config.php exists, we skip setup.
if [ -f "/var/www/html/wp-config.php" ]; then
    echo "WordPress is already installed."
else
    # Download WordPress core files
    wp core download --path=/var/www/html --allow-root

    # Create wp-config.php
    wp config create --path=/var/www/html \
        --dbname=${DB_NAME} \
        --dbuser=${DB_USER} \
        --dbpass=${DB_PASS} \
        --dbhost=${DB_HOST} \
        --allow-root

    # Install WordPress
    wp core install --path=/var/www/html \
        --url=${WP_URL} \
        --title="${WP_TITLE}" \
        --admin_user=${WP_ADMIN_USER} \
        --admin_password=$(cat /run/secrets/wp_admin_pass) \
        --admin_email=${WP_ADMIN_EMAIL} \
        --allow-root

    # Create the second, non-admin user
    wp user create --path=/var/www/html \
        ${WP_USER} ${WP_EMAIL} \
        --role=author \
        --user_pass=$(cat /run/secrets/wp_user_pass) \
        --allow-root

    echo "WordPress installation complete."
fi

# This is the key part: `exec "$@"` runs the CMD from the Dockerfile.
# This passes control to php-fpm, making it the main process (PID 1).
exec "$@"
