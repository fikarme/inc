#!/bin/bash
set -euo pipefail

export MYSQL_ROOT_PASSWORD=$(cat /run/secrets/mysql_root_pass)
export MYSQL_PASSWORD=$(cat /run/secrets/mysql_pass)
export MYSQL_DATABASE=${MYSQL_DATABASE:-wordpress}
export MYSQL_USER=${MYSQL_USER:-fi}

if [ ! -d "/var/lib/mysql/mysql" ]; then
  echo "[INFO] Initializing database..."
  mysqld --initialize-insecure --user=mysql
fi

mysqld --user=mysql &
PID=$!
echo "[INFO] Waiting for MariaDB..."
timeout 30 bash -c 'until mysqladmin ping --silent; do sleep 1; done'

echo "[INFO] Setting root password..."
cat > /root/.my.cnf <<EOF
[client]
user=root
password=$MYSQL_ROOT_PASSWORD
EOF
chmod 600 /root/.my.cnf
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"

echo "[INFO] Running init.sql..."
# Create the directory first - this is the missing piece
mkdir -p /docker-entrypoint-initdb.d
envsubst < /tmp/set.sql > /docker-entrypoint-initdb.d/init.sql
mysql < /docker-entrypoint-initdb.d/init.sql

rm -f /root/.my.cnf /docker-entrypoint-initdb.d/init.sql
kill "$PID"
wait "$PID"

echo "[INFO] MariaDB setup complete."

# Hand control to the CMD
exec "$@"
