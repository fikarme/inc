# Check if WordPress container has the files
docker exec -it wordpress ls -la /var/www/html/

# Check if PHP-FPM is running
docker exec -it wordpress ps aux | grep php-fpm

# Test nginx -> wordpress connection
docker exec -it nginx nc -zv wordpress 9000

# Check MariaDB is accessible
docker exec -it mariadb mariadb -u fi -pmeys -e "SHOW DATABASES;"

grep fi.42.fr /etc/hosts
# Should show: 127.0.0.1 fi.42.fr

docker exec -it wordpress mariadb -h mariadb -u fi -pmeys -e "SELECT 1;"

docker exec -it wordpress php-fpm7.4 -t
# Should return "configuration file test is successful"

sudo docker exec -it wordpress mysql -h mariadb -u fi -pmeys -e "SELECT 1;"

# Test if MariaDB is actually listening
sudo docker exec -it mariadb ss -tlnp | grep 3306

# Check if WordPress can reach MariaDB
sudo docker exec -it wordpress nc -zv mariadb 3306

# Test database connection with correct command
sudo docker exec -it wordpress mysql -h mariadb -u fi -pmeys -e "SELECT 1;"

# Check current env values
sudo docker exec -it wordpress env | grep -E "(DB_|MYSQL_)"
