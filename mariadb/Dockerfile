FROM mariadb:latest
COPY 0-maestroweb_schema.sql /docker-entrypoint-initdb.d
COPY 1-sotorrent_schema.sql /docker-entrypoint-initdb.d
COPY 2-sotorrent_ExceptionIndex.sql /docker-entrypoint-initdb.d
COPY 3-sotorrent_JavaPosts.sql-00 /tmp
COPY 3-sotorrent_JavaPosts.sql-01 /tmp
COPY 4-sotorrent_PDGs.sql-00 /tmp
COPY 4-sotorrent_PDGs.sql-01 /tmp
COPY 4-sotorrent_PDGs.sql-02 /tmp
COPY 5-user.sql /docker-entrypoint-initdb.d
COPY init.sh /tmp
RUN chmod +x /tmp/init.sh
RUN /bin/sh /tmp/init.sh
