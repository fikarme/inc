root@vbox:/home/akdemir# ping akdemir.42.fr
PING akdemir.42.fr (127.0.0.1) 56(84) bytes of data.
64 bytes from localhost (127.0.0.1): icmp_seq=1 ttl=64 time=0.067 ms
64 bytes from localhost (127.0.0.1): icmp_seq=2 ttl=64 time=0.040 ms
64 bytes from localhost (127.0.0.1): icmp_seq=3 ttl=64 time=0.030 ms
64 bytes from localhost (127.0.0.1): icmp_seq=4 ttl=64 time=0.031 ms
^C
--- akdemir.42.fr ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3115ms
rtt min/avg/max/mdev = 0.030/0.042/0.067/0.014 ms

hosts file has akdemir

root@vbox:/home/akdemir# docker logs nginx
Generating self-signed SSL certificate...
Generating a RSA private key
.......+++++
..................+++++
writing new private key to '/etc/ssl/private/nginx.key'
-----
req: No value provided for Subject Attribute C, skipped
req: No value provided for Subject Attribute ST, skipped
req: No value provided for Subject Attribute L, skipped
req: No value provided for Subject Attribute O, skipped
req: No value provided for Subject Attribute CN, skipped
/usr/local/bin/setup.sh: line 16: envsubst: command not found
/usr/local/bin/setup.sh: line 16: envsubst: command not found
/usr/local/bin/setup.sh: line 16: envsubst: command not found
root@vbox:/home/akdemir#



root@vbox:/home/akdemir/inc# docker logs nginx
Generating self-signed SSL certificate...
Generating a RSA private key
..........................................+++++
.......................................................+++++
writing new private key to '/etc/ssl/private/nginx.key'
-----
req: No value provided for Subject Attribute C, skipped
req: No value provided for Subject Attribute ST, skipped
req: No value provided for Subject Attribute L, skipped
req: No value provided for Subject Attribute O, skipped
req: No value provided for Subject Attribute CN, skipped
nginx: [emerg] invalid number of arguments in "server_name" directive in /etc/nginx/conf.d/default.conf:6
nginx: [emerg] invalid number of arguments in "server_name" directive in /etc/nginx/conf.d/default.conf:6
nginx: [emerg] invalid number of arguments in "server_name" directive in /etc/nginx/conf.d/default.conf:6
nginx: [emerg] invalid number of arguments in "server_name" directive in /etc/nginx/conf.d/default.conf:6
nginx: [emerg] invalid number of arguments in "server_name" directive in /etc/nginx/conf.d/default.conf:6
nginx: [emerg] invalid number of arguments in "server_name" directive in /etc/nginx/conf.d/default.conf:6
nginx: [emerg] invalid number of arguments in "server_name" directive in /etc/nginx/conf.d/default.conf:6
nginx: [emerg] invalid number of arguments in "server_name" directive in /etc/nginx/conf.d/default.conf:6
nginx: [emerg] invalid number of arguments in "server_name" directive in /etc/nginx/conf.d/default.conf:6
nginx: [emerg] invalid number of arguments in "server_name" directive in /etc/nginx/conf.d/default.conf:6
nginx: [emerg] invalid number of arguments in "server_name" directive in /etc/nginx/conf.d/default.conf:6
nginx: [emerg] invalid number of arguments in "server_name" directive in /etc/nginx/conf.d/default.conf:6

root@vbox:/home/akdemir/inc# docker logs wordpress
WordPress not found. Starting installation...
Waiting for MariaDB connection...

root@vbox:/home/akdemir/inc# docker logs mariadb
Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
Waiting for MariaDB to start...
Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
250705 12:07:24 mysqld_safe Logging to syslog.
250705 12:07:24 mysqld_safe Starting mariadbd daemon with databases from /var/lib/mysql
Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mysqld is alive
Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
