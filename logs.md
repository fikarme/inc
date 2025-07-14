docker-compose -f ./srcs/docker-compose.yml logs
Attaching to nginx, wordpress, mariadb
nginx        | 2025/07/14 14:49:57 [error] 8#8: *2 directory index of "/var/www/html/" is forbidden, client: 172.18.0.1, server: akdemir.42.fr, request: "GET / HTTP/1.1", host: "akdemir.42.fr"
nginx        | 172.18.0.1 - - [14/Jul/2025:14:49:57 +0000] "GET / HTTP/1.1" 403 118 "-" "Mozilla/5.0 (X11; Linux x86_64; rv:128.0) Gecko/20100101 Firefox/128.0"
nginx        | 172.18.0.1 - - [14/Jul/2025:14:50:51 +0000] "GET / HTTP/1.1" 403 146 "-" "curl/7.74.0"
nginx        | 2025/07/14 14:50:51 [error] 8#8: *3 directory index of "/var/www/html/" is forbidden, client: 172.18.0.1, server: akdemir.42.fr, request: "GET / HTTP/1.1", host: "akdemir.42.fr"
nginx        | 172.18.0.1 - - [14/Jul/2025:14:50:51 +0000] "GET / HTTP/1.1" 403 146 "-" "curl/7.74.0"
nginx        | 2025/07/14 14:50:51 [error] 8#8: *4 directory index of "/var/www/html/" is forbidden, client: 172.18.0.1, server: akdemir.42.fr, request: "GET / HTTP/1.1", host: "akdemir.42.fr"
nginx        | 172.18.0.1 - - [14/Jul/2025:14:51:52 +0000] "GET / HTTP/1.1" 403 146 "-" "curl/7.74.0"
nginx        | 2025/07/14 14:51:52 [error] 8#8: *5 directory index of "/var/www/html/" is forbidden, client: 172.18.0.1, server: akdemir.42.fr, request: "GET / HTTP/1.1", host: "akdemir.42.fr"
nginx        | 172.18.0.1 - - [14/Jul/2025:14:51:53 +0000] "GET / HTTP/1.1" 403 146 "-" "curl/7.74.0"
nginx        | 2025/07/14 14:51:53 [error] 8#8: *6 directory index of "/var/www/html/" is forbidden, client: 172.18.0.1, server: akdemir.42.fr, request: "GET / HTTP/1.1", host: "akdemir.42.fr"
wordpress    | WordPress not found. Starting installation...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
wordpress    | Waiting for MariaDB connection...
mariadb      | [INFO] Waiting for MariaDB...
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | 2025-07-14 14:49:51 0 [Note] Starting MariaDB 10.5.29-MariaDB-0+deb11u1 source revision c461188ca6ad6ec3a54201eb87ebd75797d296df server_uid Xf51KAKWnimI72/3NJ93hcqbBEA= as process 9
mariadb      | 2025-07-14 14:49:51 0 [Note] InnoDB: Uses event mutexes
mariadb      | 2025-07-14 14:49:51 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
mariadb      | 2025-07-14 14:49:51 0 [Note] InnoDB: Number of pools: 1
mariadb      | 2025-07-14 14:49:51 0 [Note] InnoDB: Using crc32 + pclmulqdq instructions
mariadb      | 2025-07-14 14:49:51 0 [Note] mysqld: O_TMPFILE is not supported on /tmp (disabling future attempts)
mariadb      | 2025-07-14 14:49:51 0 [Note] InnoDB: Using Linux native AIO
mariadb      | 2025-07-14 14:49:51 0 [Note] InnoDB: Initializing buffer pool, total size = 134217728, chunk size = 134217728
mariadb      | 2025-07-14 14:49:51 0 [Note] InnoDB: Completed initialization of buffer pool
mariadb      | 2025-07-14 14:49:51 0 [Note] InnoDB: 128 rollback segments are active.
mariadb      | 2025-07-14 14:49:51 0 [Note] InnoDB: Creating shared tablespace for temporary tables
mariadb      | 2025-07-14 14:49:51 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
mariadb      | 2025-07-14 14:49:51 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
mariadb      | 2025-07-14 14:49:51 0 [Note] InnoDB: 10.5.29 started; log sequence number 45079; transaction id 20
mariadb      | 2025-07-14 14:49:51 0 [Note] Plugin 'FEEDBACK' is disabled.
mariadb      | 2025-07-14 14:49:51 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
mariadb      | 2025-07-14 14:49:51 0 [Note] InnoDB: Buffer pool(s) load completed at 250714 14:49:51
mariadb      | 2025-07-14 14:49:51 0 [Note] Server socket created on IP: '::'.
mariadb      | 2025-07-14 14:49:51 0 [ERROR] Can't start server : Bind on unix socket: No such file or directory
mariadb      | 2025-07-14 14:49:51 0 [ERROR] Do you already have another mysqld server running on socket: /run/mysqld/mysqld.sock ?
mariadb      | 2025-07-14 14:49:51 0 [ERROR] Aborting
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | [INFO] Waiting for MariaDB...
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | 2025-07-14 14:50:21 0 [Note] Starting MariaDB 10.5.29-MariaDB-0+deb11u1 source revision c461188ca6ad6ec3a54201eb87ebd75797d296df server_uid H+1loiT4zAKjBrArzrjRob5EHQM= as process 8
mariadb      | 2025-07-14 14:50:21 0 [Note] InnoDB: Uses event mutexes
mariadb      | 2025-07-14 14:50:21 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
mariadb      | 2025-07-14 14:50:21 0 [Note] InnoDB: Number of pools: 1
mariadb      | 2025-07-14 14:50:21 0 [Note] InnoDB: Using crc32 + pclmulqdq instructions
mariadb      | 2025-07-14 14:50:21 0 [Note] mysqld: O_TMPFILE is not supported on /tmp (disabling future attempts)
mariadb      | 2025-07-14 14:50:21 0 [Note] InnoDB: Using Linux native AIO
mariadb      | 2025-07-14 14:50:21 0 [Note] InnoDB: Initializing buffer pool, total size = 134217728, chunk size = 134217728
mariadb      | 2025-07-14 14:50:21 0 [Note] InnoDB: Completed initialization of buffer pool
mariadb      | 2025-07-14 14:50:21 0 [Note] InnoDB: 128 rollback segments are active.
mariadb      | 2025-07-14 14:50:21 0 [Note] InnoDB: Creating shared tablespace for temporary tables
mariadb      | 2025-07-14 14:50:21 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
mariadb      | 2025-07-14 14:50:21 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
mariadb      | 2025-07-14 14:50:21 0 [Note] InnoDB: 10.5.29 started; log sequence number 45091; transaction id 20
mariadb      | 2025-07-14 14:50:21 0 [Note] Plugin 'FEEDBACK' is disabled.
mariadb      | 2025-07-14 14:50:21 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
mariadb      | 2025-07-14 14:50:21 0 [Note] InnoDB: Buffer pool(s) load completed at 250714 14:50:21
mariadb      | 2025-07-14 14:50:21 0 [Note] Server socket created on IP: '::'.
mariadb      | 2025-07-14 14:50:21 0 [ERROR] Can't start server : Bind on unix socket: No such file or directory
mariadb      | 2025-07-14 14:50:21 0 [ERROR] Do you already have another mysqld server running on socket: /run/mysqld/mysqld.sock ?
mariadb      | 2025-07-14 14:50:21 0 [ERROR] Aborting
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | [INFO] Waiting for MariaDB...
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | 2025-07-14 14:50:51 0 [Note] Starting MariaDB 10.5.29-MariaDB-0+deb11u1 source revision c461188ca6ad6ec3a54201eb87ebd75797d296df server_uid IIZMrn12zhZPkhIzUi6b1aTDlro= as process 9
mariadb      | 2025-07-14 14:50:51 0 [Note] InnoDB: Uses event mutexes
mariadb      | 2025-07-14 14:50:51 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
mariadb      | 2025-07-14 14:50:51 0 [Note] InnoDB: Number of pools: 1
mariadb      | 2025-07-14 14:50:51 0 [Note] InnoDB: Using crc32 + pclmulqdq instructions
mariadb      | 2025-07-14 14:50:51 0 [Note] mysqld: O_TMPFILE is not supported on /tmp (disabling future attempts)
mariadb      | 2025-07-14 14:50:52 0 [Note] InnoDB: Using Linux native AIO
mariadb      | 2025-07-14 14:50:52 0 [Note] InnoDB: Initializing buffer pool, total size = 134217728, chunk size = 134217728
mariadb      | 2025-07-14 14:50:52 0 [Note] InnoDB: Completed initialization of buffer pool
mariadb      | 2025-07-14 14:50:52 0 [Note] InnoDB: 128 rollback segments are active.
mariadb      | 2025-07-14 14:50:52 0 [Note] InnoDB: Creating shared tablespace for temporary tables
mariadb      | 2025-07-14 14:50:52 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
mariadb      | 2025-07-14 14:50:52 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
mariadb      | 2025-07-14 14:50:52 0 [Note] InnoDB: 10.5.29 started; log sequence number 45103; transaction id 20
mariadb      | 2025-07-14 14:50:52 0 [Note] Plugin 'FEEDBACK' is disabled.
mariadb      | 2025-07-14 14:50:52 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
mariadb      | 2025-07-14 14:50:52 0 [Note] InnoDB: Buffer pool(s) load completed at 250714 14:50:52
mariadb      | 2025-07-14 14:50:52 0 [Note] Server socket created on IP: '::'.
mariadb      | 2025-07-14 14:50:52 0 [ERROR] Can't start server : Bind on unix socket: No such file or directory
mariadb      | 2025-07-14 14:50:52 0 [ERROR] Do you already have another mysqld server running on socket: /run/mysqld/mysqld.sock ?
mariadb      | 2025-07-14 14:50:52 0 [ERROR] Aborting
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | [INFO] Waiting for MariaDB...
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | 2025-07-14 14:51:22 0 [Note] Starting MariaDB 10.5.29-MariaDB-0+deb11u1 source revision c461188ca6ad6ec3a54201eb87ebd75797d296df server_uid xHyJXBfyGkKRw3JDooNuyTH6fhM= as process 9
mariadb      | 2025-07-14 14:51:22 0 [Note] InnoDB: Uses event mutexes
mariadb      | 2025-07-14 14:51:22 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
mariadb      | 2025-07-14 14:51:22 0 [Note] InnoDB: Number of pools: 1
mariadb      | 2025-07-14 14:51:22 0 [Note] InnoDB: Using crc32 + pclmulqdq instructions
mariadb      | 2025-07-14 14:51:22 0 [Note] mysqld: O_TMPFILE is not supported on /tmp (disabling future attempts)
mariadb      | 2025-07-14 14:51:22 0 [Note] InnoDB: Using Linux native AIO
mariadb      | 2025-07-14 14:51:22 0 [Note] InnoDB: Initializing buffer pool, total size = 134217728, chunk size = 134217728
mariadb      | 2025-07-14 14:51:22 0 [Note] InnoDB: Completed initialization of buffer pool
mariadb      | 2025-07-14 14:51:22 0 [Note] InnoDB: 128 rollback segments are active.
mariadb      | 2025-07-14 14:51:22 0 [Note] InnoDB: Creating shared tablespace for temporary tables
mariadb      | 2025-07-14 14:51:22 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
mariadb      | 2025-07-14 14:51:22 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
mariadb      | 2025-07-14 14:51:22 0 [Note] InnoDB: 10.5.29 started; log sequence number 45115; transaction id 20
mariadb      | 2025-07-14 14:51:22 0 [Note] Plugin 'FEEDBACK' is disabled.
mariadb      | 2025-07-14 14:51:22 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
mariadb      | 2025-07-14 14:51:22 0 [Note] InnoDB: Buffer pool(s) load completed at 250714 14:51:22
mariadb      | 2025-07-14 14:51:22 0 [Note] Server socket created on IP: '::'.
mariadb      | 2025-07-14 14:51:22 0 [ERROR] Can't start server : Bind on unix socket: No such file or directory
mariadb      | 2025-07-14 14:51:22 0 [ERROR] Do you already have another mysqld server running on socket: /run/mysqld/mysqld.sock ?
mariadb      | 2025-07-14 14:51:22 0 [ERROR] Aborting
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | [INFO] Waiting for MariaDB...
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | 2025-07-14 14:51:52 0 [Note] Starting MariaDB 10.5.29-MariaDB-0+deb11u1 source revision c461188ca6ad6ec3a54201eb87ebd75797d296df server_uid sJmZxd9XB10QG7OZTzS99M0RboU= as process 9
mariadb      | 2025-07-14 14:51:52 0 [Note] InnoDB: Uses event mutexes
mariadb      | 2025-07-14 14:51:52 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
mariadb      | 2025-07-14 14:51:52 0 [Note] InnoDB: Number of pools: 1
mariadb      | 2025-07-14 14:51:52 0 [Note] InnoDB: Using crc32 + pclmulqdq instructions
mariadb      | 2025-07-14 14:51:52 0 [Note] mysqld: O_TMPFILE is not supported on /tmp (disabling future attempts)
mariadb      | 2025-07-14 14:51:52 0 [Note] InnoDB: Using Linux native AIO
mariadb      | 2025-07-14 14:51:52 0 [Note] InnoDB: Initializing buffer pool, total size = 134217728, chunk size = 134217728
mariadb      | 2025-07-14 14:51:52 0 [Note] InnoDB: Completed initialization of buffer pool
mariadb      | 2025-07-14 14:51:52 0 [Note] InnoDB: 128 rollback segments are active.
mariadb      | 2025-07-14 14:51:52 0 [Note] InnoDB: Creating shared tablespace for temporary tables
mariadb      | 2025-07-14 14:51:52 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
mariadb      | 2025-07-14 14:51:52 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
mariadb      | 2025-07-14 14:51:52 0 [Note] InnoDB: 10.5.29 started; log sequence number 45127; transaction id 20
mariadb      | 2025-07-14 14:51:52 0 [Note] Plugin 'FEEDBACK' is disabled.
mariadb      | 2025-07-14 14:51:52 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
mariadb      | 2025-07-14 14:51:52 0 [Note] InnoDB: Buffer pool(s) load completed at 250714 14:51:52
mariadb      | 2025-07-14 14:51:52 0 [Note] Server socket created on IP: '::'.
mariadb      | 2025-07-14 14:51:52 0 [ERROR] Can't start server : Bind on unix socket: No such file or directory
mariadb      | 2025-07-14 14:51:52 0 [ERROR] Do you already have another mysqld server running on socket: /run/mysqld/mysqld.sock ?
mariadb      | 2025-07-14 14:51:52 0 [ERROR] Aborting
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | [INFO] Waiting for MariaDB...
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | 2025-07-14 14:52:23 0 [Note] Starting MariaDB 10.5.29-MariaDB-0+deb11u1 source revision c461188ca6ad6ec3a54201eb87ebd75797d296df server_uid Zaf4fTgawsbbGkohy8MU2FyxbwQ= as process 9
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | 2025-07-14 14:52:23 0 [Note] InnoDB: Uses event mutexes
mariadb      | 2025-07-14 14:52:23 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
mariadb      | 2025-07-14 14:52:23 0 [Note] InnoDB: Number of pools: 1
mariadb      | 2025-07-14 14:52:23 0 [Note] InnoDB: Using crc32 + pclmulqdq instructions
mariadb      | 2025-07-14 14:52:23 0 [Note] mysqld: O_TMPFILE is not supported on /tmp (disabling future attempts)
mariadb      | 2025-07-14 14:52:23 0 [Note] InnoDB: Using Linux native AIO
mariadb      | 2025-07-14 14:52:23 0 [Note] InnoDB: Initializing buffer pool, total size = 134217728, chunk size = 134217728
mariadb      | 2025-07-14 14:52:23 0 [Note] InnoDB: Completed initialization of buffer pool
mariadb      | 2025-07-14 14:52:23 0 [Note] InnoDB: 128 rollback segments are active.
mariadb      | 2025-07-14 14:52:23 0 [Note] InnoDB: Creating shared tablespace for temporary tables
mariadb      | 2025-07-14 14:52:23 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
mariadb      | 2025-07-14 14:52:23 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
mariadb      | 2025-07-14 14:52:23 0 [Note] InnoDB: 10.5.29 started; log sequence number 45139; transaction id 20
mariadb      | 2025-07-14 14:52:23 0 [Note] Plugin 'FEEDBACK' is disabled.
mariadb      | 2025-07-14 14:52:23 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
mariadb      | 2025-07-14 14:52:23 0 [Note] InnoDB: Buffer pool(s) load completed at 250714 14:52:23
mariadb      | 2025-07-14 14:52:23 0 [Note] Server socket created on IP: '::'.
mariadb      | 2025-07-14 14:52:23 0 [ERROR] Can't start server : Bind on unix socket: No such file or directory
mariadb      | 2025-07-14 14:52:23 0 [ERROR] Do you already have another mysqld server running on socket: /run/mysqld/mysqld.sock ?
mariadb      | 2025-07-14 14:52:23 0 [ERROR] Aborting
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | [INFO] Waiting for MariaDB...
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | 2025-07-14 14:52:53 0 [Note] Starting MariaDB 10.5.29-MariaDB-0+deb11u1 source revision c461188ca6ad6ec3a54201eb87ebd75797d296df server_uid CCw1yp/qteeG5KdrVh90pcgsF6c= as process 9
mariadb      | 2025-07-14 14:52:53 0 [Note] InnoDB: Uses event mutexes
mariadb      | 2025-07-14 14:52:53 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
mariadb      | 2025-07-14 14:52:53 0 [Note] InnoDB: Number of pools: 1
mariadb      | 2025-07-14 14:52:53 0 [Note] InnoDB: Using crc32 + pclmulqdq instructions
mariadb      | 2025-07-14 14:52:53 0 [Note] mysqld: O_TMPFILE is not supported on /tmp (disabling future attempts)
mariadb      | 2025-07-14 14:52:53 0 [Note] InnoDB: Using Linux native AIO
mariadb      | 2025-07-14 14:52:53 0 [Note] InnoDB: Initializing buffer pool, total size = 134217728, chunk size = 134217728
mariadb      | 2025-07-14 14:52:53 0 [Note] InnoDB: Completed initialization of buffer pool
mariadb      | 2025-07-14 14:52:53 0 [Note] InnoDB: 128 rollback segments are active.
mariadb      | 2025-07-14 14:52:53 0 [Note] InnoDB: Creating shared tablespace for temporary tables
mariadb      | 2025-07-14 14:52:53 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
mariadb      | 2025-07-14 14:52:53 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
mariadb      | 2025-07-14 14:52:53 0 [Note] InnoDB: 10.5.29 started; log sequence number 45151; transaction id 20
mariadb      | 2025-07-14 14:52:53 0 [Note] Plugin 'FEEDBACK' is disabled.
mariadb      | 2025-07-14 14:52:53 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
mariadb      | 2025-07-14 14:52:53 0 [Note] InnoDB: Buffer pool(s) load completed at 250714 14:52:53
mariadb      | 2025-07-14 14:52:53 0 [Note] Server socket created on IP: '::'.
mariadb      | 2025-07-14 14:52:53 0 [ERROR] Can't start server : Bind on unix socket: No such file or directory
mariadb      | 2025-07-14 14:52:53 0 [ERROR] Do you already have another mysqld server running on socket: /run/mysqld/mysqld.sock ?
mariadb      | 2025-07-14 14:52:53 0 [ERROR] Aborting
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | [INFO] Waiting for MariaDB...
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | 2025-07-14 14:53:23 0 [Note] Starting MariaDB 10.5.29-MariaDB-0+deb11u1 source revision c461188ca6ad6ec3a54201eb87ebd75797d296df server_uid 55Sz++3WCCaW6j0Zeugo2yy9gMs= as process 9
mariadb      | 2025-07-14 14:53:23 0 [Note] InnoDB: Uses event mutexes
mariadb      | 2025-07-14 14:53:23 0 [Note] InnoDB: Compressed tables use zlib 1.2.11
mariadb      | 2025-07-14 14:53:23 0 [Note] InnoDB: Number of pools: 1
mariadb      | 2025-07-14 14:53:23 0 [Note] InnoDB: Using crc32 + pclmulqdq instructions
mariadb      | 2025-07-14 14:53:23 0 [Note] mysqld: O_TMPFILE is not supported on /tmp (disabling future attempts)
mariadb      | 2025-07-14 14:53:23 0 [Note] InnoDB: Using Linux native AIO
mariadb      | 2025-07-14 14:53:23 0 [Note] InnoDB: Initializing buffer pool, total size = 134217728, chunk size = 134217728
mariadb      | 2025-07-14 14:53:23 0 [Note] InnoDB: Completed initialization of buffer pool
mariadb      | 2025-07-14 14:53:23 0 [Note] InnoDB: 128 rollback segments are active.
mariadb      | 2025-07-14 14:53:23 0 [Note] InnoDB: Creating shared tablespace for temporary tables
mariadb      | 2025-07-14 14:53:23 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
mariadb      | 2025-07-14 14:53:23 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
mariadb      | 2025-07-14 14:53:23 0 [Note] InnoDB: 10.5.29 started; log sequence number 45163; transaction id 20
mariadb      | 2025-07-14 14:53:23 0 [Note] Plugin 'FEEDBACK' is disabled.
mariadb      | 2025-07-14 14:53:23 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
mariadb      | 2025-07-14 14:53:23 0 [Note] InnoDB: Buffer pool(s) load completed at 250714 14:53:23
mariadb      | 2025-07-14 14:53:23 0 [Note] Server socket created on IP: '::'.
mariadb      | 2025-07-14 14:53:23 0 [ERROR] Can't start server : Bind on unix socket: No such file or directory
mariadb      | 2025-07-14 14:53:23 0 [ERROR] Do you already have another mysqld server running on socket: /run/mysqld/mysqld.sock ?
mariadb      | 2025-07-14 14:53:23 0 [ERROR] Aborting
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
mariadb      | Warning: World-writable config file '/etc/mysql/mariadb.conf.d/50-server.cnf' is ignored
