#!/bin/bash

set -e # Exit immediately if a command exits with a non-zero status.

# Start MariaDB in the background
mysqld_safe --datadir=/var/lib/mysql &

# Wait for MariaDB to be ready
until mysqladmin ping --silent; do
    echo "Waiting for MariaDB to start..."
    sleep 2
done

# Read passwords from Docker secrets
DB_ROOT_PASS=$(cat /run/secrets/db_root_pass)
DB_PASS=$(cat /run/secrets/db_pass)

# Create database and user if they don't exist
# Using environment variables from the .env file (DB_NAME, DB_USER)
mariadb -u root -p"${DB_ROOT_PASS}" <<-EOSQL
    CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\`;
    CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
    GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO '${DB_USER}'@'%';
    FLUSH PRIVILEGES;
EOSQL

# Bring the MariaDB process to the foreground
wait

# This is a fallback to ensure the container keeps running with the main process
exec "$@"
