#!/bin/bash
#开发mysql
docker run -d -e MYSQL_ROOT_PASSWORD=AD4miniants -p 3666:3666 -v /data/dev_mysql:/var/lib/mysql \
 -v /data/dev_mysql/my.cnf:/etc/mysql/my.cnf \
 --restart=on-failure \
 --name=dev_mysql mysql:5.6


