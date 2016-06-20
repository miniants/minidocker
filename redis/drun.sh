#!/bin/bash


docker run -d --name=redis -p 6379:6379  \
    -e REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.0.tar.gz \
    -e REDIS_DOWNLOAD_SHA1=0c1820931094369c8cc19fc1be62f598bc5961ca
    -v /data/redis/data:/data \
    -v /data/redis/redis.conf:/usr/local/etc/redis/redis.conf redis
