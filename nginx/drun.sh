#!/bin/bash
docker run -d \
 -v /data/nginx/conf/nginx.conf:/etc/nginx/nginx.conf:ro \
 -v /data/nginx/logs:/data/nginx/logs \
 -v /data/www:/data/www:ro \
 -v /data/cet/userdata:/data/www/cet/static/userdata:ro \
 -p 80:80 --name nginx \
 --restart=on-failure \
 nginx

