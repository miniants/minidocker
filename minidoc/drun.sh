#!/bin/sh
docker run -d --name minidoc -p 3000:3000 \
           -v /data/minidoc:/usr/src/app:rw \
           -v /data/www/mrd_doc:/usr/src/app/public/mrd_doc:rw \
           -w /usr/src/app mininode  pm2-docker start bin/www
