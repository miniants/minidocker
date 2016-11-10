#!/bin/bash

##数据库准备
# CREATE USER 'REDMINE'@'%' IDENTIFIED BY 'password';


##1.下载Redmine容器映像
# docker pull sameersbn/redmine:latest

##2.在宿主系统上建立Redmine配置目录
# mkdir -p /data/redmine/

##3.启动Redmine容器

##方式一、数据库采用link的方式链接
docker run --name=redmine_3.1-latest -p 6011:80 -it --restart=on-failure \
    -e "DB_ADAPTER=mysql2" -e "DB_HOST=www.kolabao.com" -e "DB_PORT=3666" \
    -e "DB_USER=REDMINE" -e "DB_PASS=REDMINEasdfsa23234" -e "DB_NAME=REDMINE" \
    -e "SMTP_DOMAIN=exmail.qq.com" -e "SMTP_HOST=smtp.exmail.qq.com" -e "SMTP_PORT=465" -e "SMTP_TLS=true" -e "SMTP_METHOD=async_smtp" \
    -e "SMTP_USER=pm@kolabao.com" -e "SMTP_PASS=PMwe221" \
    --restart=on-failure \
    -v /data/redmine_3.1:/home/redmine/data sameersbn/redmine:3.1-latest


##方式二、数据库采用port方式链接



