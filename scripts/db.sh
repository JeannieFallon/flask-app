#!/bin/bash

# Log into db container
# docker exec -ti mysqldb mysql -u root -p

PW=$1

exec docker run --rm -d -v mysql:/var/lib/mysql \
    -v mysql_config:/etc/mysql -p 3306:3306 \
    --network mysqlnet \
    --name mysqldb \
    -e MYSQL_ROOT_PASSWORD=$PW \
    mysql
