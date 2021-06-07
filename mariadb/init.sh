#!/bin/bash
cat /tmp/3-sotorrent_JavaPosts.sql-* > /docker-entrypoint-initdb.d/3-sotorrent_JavaPosts.sql
chmod +x /docker-entrypoint-initdb.d/3-sotorrent_JavaPosts.sql
cat /tmp/4-sotorrent_PDGs.sql-* > /docker-entrypoint-initdb.d/4-sotorrent_PDGs.sql
chmod +x /docker-entrypoint-initdb.d/4-sotorrent_PDGs.sql
rm /tmp/*