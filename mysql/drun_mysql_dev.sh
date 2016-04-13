#!/bin/bash
#开发mysql
docker run -d -e MYSQL_ROOT_PASSWORD=AD4miniants -p 3306:3306 -v /data/mysql_ser:/var/lib/mysql \
 -v /data/mysql_ser/my.cnf:/etc/mysql/my.cnf \
 --restart=on-failure \
 --name=mysql_dev mysql:5.6


