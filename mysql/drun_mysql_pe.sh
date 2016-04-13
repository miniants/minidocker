#!/bin/bash
#生产mysql
docker run -d -e MYSQL_ROOT_PASSWORD=AD4miniantsPE -p 13306:3306 -v /data/mysql_pe:/var/lib/mysql \
 -v /data/mysql_pe/my.cnf:/etc/mysql/my.cnf \
 --restart=on-failure \
 --name=mysql_pe mysql:5.6



