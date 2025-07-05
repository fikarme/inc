#!/bin/bash

set -e

# Only run setup if the database directory is empty
if [ -z "$(ls -A /var/lib/mysql)" ]; then
    echo "MariaDB data directory is empty. Initializing database..."

    # Initialize the database directory. This is a critical step.
    mysql_install_db --user=mysql --datadir=/var/lib/mysql

    # Start a temporary server instance
    mysqld_safe --datadir=/var/lib/mysql &
    pid="$!"

    # Wait for the server to be ready
    until mysqladmin ping --silent; do
        echo "Waiting for MariaDB to start..."
        sleep 2
    done

    # Read passwords from Docker secrets
    DB_ROOT_PASS=$(cat /run/secrets/db_root_pass)
    DB_PASS=$(cat /run/secrets/db_pass)

    # Execute setup SQL. This is where the magic happens.
    mariadb -u root <<-EOSQL
        ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASS}';
        DELETE FROM mysql.user WHERE User='';
        DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
        DROP DATABASE IF EXISTS test;
        DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';
        CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\`;
        CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
        GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO '${DB_USER}'@'%';
        FLUSH PRIVILEGES;
EOSQL

    # Stop the temporary server
    kill "$pid"
    # Wait for process to die
    wait "$pid"
    echo "MariaDB initialization complete."
else
    echo "MariaDB database already exists. Skipping initialization."
fi

# This is the main event: exec "$@" runs the CMD from the Dockerfile.
# This starts the MariaDB server in the foreground, making it PID 1.
exec "$@"
