sudo docker events
mariadb dockerfilenda sh olup olmaması

fix esenler to sarıyer

So how do you use the secrets? For WordPress, the secrets (wp_admin_password, wp_user_password) are still mounted to /run/secrets/ inside the container. But it's now the job of your custom entrypoint script (the .sh file you call in your WordPress Dockerfile) to handle them.

The Script's Role:
The script isn't storing the secret; it's just the messenger. It reads the secret from the secure tmpfs location, uses it once for the wp-cli command, and then the shell variable can go out of scope. The secret itself is managed by Docker's secure mechanism.

Secrets > Environment Variables:
Docker Secrets are mounted into a temporary, in-memory filesystem (tmpfs). They are never written to the container's disk, making them way harder to intercept. This is a massive security W.

The 42 Way:
This pattern is the canonical solution for Inception. It proves you understand the difference between an official image with built-in secret handling (like MariaDB's _FILE variables) and a situation where you have to roll your own secure implementation.

Once the container starts, Docker takes that secret and mounts it as a file inside the container. It doesn't use the host path. By default, all secrets live in a special, secure spot: /run/secrets/.


in dockerfile
ENV DEBIAN_FRONTEND=noninteractive
for debconf warnings


A Docker container is not a virtual machine. Thus, it is not recommended to use any hacky patches based on ’tail -f’ and similar methods when trying to run it. Read about how daemons work and whether it’s a good idea to use them or not.

# The command to run PHP-FPM in the foreground (no infinite loops!)
CMD ["php-fpm7.4", "-F"]


Successfully built d9df46776ef5
Successfully tagged nginx:latest
docker-compose -f ./srcs/docker-compose.yml up -d
Recreating mariadb ... done
Recreating wordpress ... done
Recreating nginx     ... done
root@vbox:/home/akdemir#


root@vbox:/home/akdemir# docker ps
CONTAINER ID   IMAGE       COMMAND                  CREATED          STATUS                           PORTS      NAMES
ae04513c0d61   nginx       "/usr/local/bin/setu…"   30 seconds ago   Restarting (127) 2 seconds ago              nginx
7852f1b559f9   wordpress   "/usr/local/bin/setu…"   30 seconds ago   Up 30 seconds                    9000/tcp   wordpress
4957d5e86e7c   mariadb     "/usr/local/bin/setu…"   41 seconds ago   Up 40 seconds                    3306/tcp   mariadb
root@vbox:/home/akdemir#


1241a780bf04_nginx | /usr/local/bin/setup.sh: line 16: envsubst: command not found
1241a780bf04_nginx | /usr/local/bin/setup.sh: line 16: envsubst: command not found
1241a780bf04_nginx | /usr/local/bin/setup.sh: line 16: envsubst: command not found
1241a780bf04_nginx | /usr/local/bin/setup.sh: line 16: envsubst: command not found
1241a780bf04_nginx | /usr/local/bin/setup.sh: line 16: envsubst: command not found
1241a780bf04_nginx | /usr/local/bin/setup.sh: line 16: envsubst: command not found
1241a780bf04_nginx | /usr/local/bin/setup.sh: line 16: envsubst: command not found
1241a780bf04_nginx | /usr/local/bin/setup.sh: line 16: envsubst: command not found
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Waiting for MariaDB to start...
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | 250705 11:47:03 mysqld_safe Logging to syslog.
mariadb      | 250705 11:47:03 mysqld_safe Starting mariadbd daemon with databases from /var/lib/mysql
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | mysqld is alive
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored

root@vbox:/home/akdemir# docker images -a
REPOSITORY   TAG        IMAGE ID       CREATED             SIZE
<none>       <none>     81e298776520   2 minutes ago       184MB
<none>       <none>     abac9dc0d05d   2 minutes ago       184MB
nginx        latest     d9df46776ef5   2 minutes ago       184MB
<none>       <none>     450ed53ee8bc   2 minutes ago       184MB
<none>       <none>     44b8bfb99403   2 minutes ago       184MB
<none>       <none>     22c22d543857   2 minutes ago       184MB
<none>       <none>     9575f644aff1   2 minutes ago       184MB
<none>       <none>     63766d5e1c3b   2 minutes ago       184MB
<none>       <none>     ccba8100573f   2 minutes ago       251MB
<none>       <none>     791968703b2a   2 minutes ago       251MB
wordpress    latest     06b5c4a38e8c   2 minutes ago       251MB
<none>       <none>     8c8712e11566   2 minutes ago       251MB
<none>       <none>     c162d2105344   2 minutes ago       251MB
<none>       <none>     baa895817d38   2 minutes ago       251MB
<none>       <none>     ad4296cc0342   2 minutes ago       251MB
<none>       <none>     f67df58dc78e   2 minutes ago       251MB
<none>       <none>     eaae4e3d86c2   2 minutes ago       244MB
<none>       <none>     3068cd6be93c   4 minutes ago       242MB
<none>       <none>     2b56800e909d   5 minutes ago       459MB
<none>       <none>     330bf3ffce3e   5 minutes ago       459MB
<none>       <none>     a97bc09d4866   5 minutes ago       459MB
mariadb      latest     50f81d8d4d6d   5 minutes ago       459MB
<none>       <none>     c769799acf8d   5 minutes ago       459MB
<none>       <none>     92b5b2ac293d   5 minutes ago       459MB
<none>       <none>     46329d6830d0   5 minutes ago       459MB
<none>       <none>     719a6439d627   5 minutes ago       124MB
<none>       <none>     af6aa8600c56   19 minutes ago      196MB
<none>       <none>     48f416f6398e   19 minutes ago      196MB
<none>       <none>     f0d45e568ff0   19 minutes ago      196MB
<none>       <none>     d3fb840de35a   19 minutes ago      196MB
<none>       <none>     0d25aff606be   19 minutes ago      196MB
<none>       <none>     594188fe786b   19 minutes ago      196MB
<none>       <none>     999db5bbcae1   19 minutes ago      196MB
<none>       <none>     9bcaba666858   19 minutes ago      254MB
<none>       <none>     e185b0def239   19 minutes ago      254MB
<none>       <none>     5172c1365903   19 minutes ago      254MB
<none>       <none>     ca4293deed79   19 minutes ago      254MB
<none>       <none>     54194afcfe7b   19 minutes ago      254MB
<none>       <none>     684c85f0ed29   19 minutes ago      254MB
<none>       <none>     8a44563ea7bc   19 minutes ago      254MB
<none>       <none>     bdb779a834f1   19 minutes ago      254MB
<none>       <none>     525911e76a76   19 minutes ago      246MB
<none>       <none>     fc8365be8ca5   20 minutes ago      462MB
<none>       <none>     063ab3b45490   20 minutes ago      462MB
<none>       <none>     1754b72f17e2   20 minutes ago      462MB
<none>       <none>     b46941c48ce3   20 minutes ago      462MB
<none>       <none>     7b6848296b90   20 minutes ago      462MB
<none>       <none>     1a9094190d9f   20 minutes ago      462MB
<none>       <none>     abf54e2c9dda   20 minutes ago      462MB
<none>       <none>     9469d63993c7   About an hour ago   196MB
<none>       <none>     d55269c8e672   About an hour ago   196MB
<none>       <none>     382a09d90c19   About an hour ago   196MB
<none>       <none>     da26669a8a69   About an hour ago   196MB
<none>       <none>     ed8a27bed751   About an hour ago   196MB
<none>       <none>     acc4fcd485a1   About an hour ago   196MB
<none>       <none>     2630dde9aecb   About an hour ago   196MB
<none>       <none>     2c574bb65f56   About an hour ago   254MB
<none>       <none>     eba76ec8de87   About an hour ago   254MB
<none>       <none>     fe1e8638da6e   About an hour ago   254MB
<none>       <none>     f26478941024   About an hour ago   254MB
<none>       <none>     f6c1fec34172   About an hour ago   254MB
<none>       <none>     f9ecad3bc12e   About an hour ago   254MB
<none>       <none>     938f1ec1d57a   About an hour ago   254MB
<none>       <none>     63b35708ad1d   About an hour ago   254MB
<none>       <none>     2726a972d804   About an hour ago   246MB
<none>       <none>     2efe3bfd0e9c   About an hour ago   462MB
<none>       <none>     7c14f70fc7e5   About an hour ago   462MB
<none>       <none>     b19f72d65cee   About an hour ago   462MB
<none>       <none>     5e5b22b99d8c   About an hour ago   462MB
<none>       <none>     2d847236ee5c   About an hour ago   462MB
<none>       <none>     825f515e15be   About an hour ago   462MB
<none>       <none>     14c92f8b03b8   About an hour ago   462MB
debian       bullseye   2515ee0c5a2e   5 days ago          124MB
root@vbox:/home/akdemir#
