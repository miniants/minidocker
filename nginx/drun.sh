#!/bin/bash
docker run -d \
 -v /data/nginx/conf/nginx.conf:/etc/nginx/nginx.conf:ro \
 -v /data/nginx/conf/server:/etc/nginx/server:ro \
 -v /data/nginx/logs:/data/nginx/logs \
 -v /data/www:/data/www:ro \
 -p 80:80 --name nginx \
 --restart=on-failure \
 nginx

