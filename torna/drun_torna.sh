#!/bin/bash
# 在数据目录创建自己的目录并下载配置文件
# mkdir /dir_to && wget https://gitee.com/durcframework/torna/raw/master/install/application.properties -O /dir_to/application.properties
docker run --name torna --restart=always \
  -p 7700:7700 \
  -e JAVA_OPTS="-server -Xms512m -Xmx512m" \
  -v /dir_to/application.properties:/torna/config/application.properties \
  -d tanghc2020/torna:1.20.0

