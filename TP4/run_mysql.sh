
docker run --rm -d \
  -v vol-sql-demo:/var/lib/mysql \
  -p 3307:3306 \
  --name tp4-sql \
  --e MYSQL_ROOT_PASSWORD=test \
  --network net-tp4 \
  mysql:8.0
