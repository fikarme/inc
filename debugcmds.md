# Check if WordPress container has the files
docker exec -it wordpress ls -la /var/www/html/

# Check if PHP-FPM is running
docker exec -it wordpress ps aux | grep php-fpm

# Test nginx -> wordpress connection
docker exec -it nginx nc -zv wordpress 9000

# Check MariaDB is accessible
docker exec -it mariadb mariadb -u akdemir -pmeys -e "SHOW DATABASES;"

grep akdemir.42.fr /etc/hosts
# Should show: 127.0.0.1 akdemir.42.fr

docker exec -it wordpress mariadb -h mariadb -u akdemir -pmeys -e "SELECT 1;"

docker exec -it wordpress php-fpm7.4 -t
# Should return "configuration file test is successful"

sudo docker exec -it wordpress mysql -h mariadb -u akdemir -pmeys -e "SELECT 1;"
