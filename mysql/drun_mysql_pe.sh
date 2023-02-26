#!/bin/bash
#生产mysql，#5.7的my.cnf 在/etc/下，5.6在/etc/mysql下
docker run -d -e MYSQL_ROOT_PASSWORD=AD4miniantsPE -p 13306:3306 -v /data/mysql_pe:/var/lib/mysql \
 -v /data/mysql_pe/my.cnf:/etc/mysql/my.cnf \
 --restart=on-failure \
 --name=mysql_pe mysql:5.7



