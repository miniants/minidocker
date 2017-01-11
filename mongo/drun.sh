#!/bin/sh
docker run --name dev_mongo -p 27017:27017 -v /data/mongo/db:/data/db -d mongo --auth
