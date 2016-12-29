#!/bin/sh
mkdir -p /data/minifs/conf
mkdir -p /data/minifs/logs
mkdir -p /data/minifs/data/pic
mkdir -p /data/minifs/data/client_temp
mkdir -p /data/minifs/data/tmp
mkdir -p /data/minifs/data/cache
if [ -f '/data/minifs/conf/nginx.conf'  ]; then  echo 'nginx.conf exsits' ; else cp ./nginx.conf /data/minifs/conf; fi
if [ -f '/data/minifs/conf/mime.types' ]; then echo 'mime.types exists' ; else cp ./mime.types /data/minifs/conf; fi

docker run -d -p 8099:80 -p 9090:9090 \
      -v /data/minifs/conf:/usr/local/openresty/nginx/conf \
      -v /data/minifs/logs:/usr/local/openresty/nginx/logs:rw \
      -v /data/minifs/data:/export/data:rw \
      --name dev_minifs miniants/minifs
