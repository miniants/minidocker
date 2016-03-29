#!/bin/bash
docker run -d \
 -v /data/nginx/conf/nginx.conf:/etc/nginx/nginx.conf:ro \
 -v /data/nginx/logs:/data/nginx/logs \
 -v /data/www:/data/www:ro \
 -p 801:80 -p 80:80 --name nignx \
 nginx

