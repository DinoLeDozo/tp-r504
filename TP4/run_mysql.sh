#!/bin/bash
docker run --rm -d \
  --name mysql-tp4 \
  --network net-tp4 \
  --env MYSQL_ROOT_PASSWORD=foo \
  -v vol-sql-demo:/var/lib/mysql \
  -p 3307:3306 \
  mysql:8.0

