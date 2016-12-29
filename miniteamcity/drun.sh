#!/bin/sh
docker run -d --name teamcity-miniants  \
    -v /data/teamcity/data:/data/teamcity_server/datadir:rw \
    -v /data/teamcity/logs:/opt/teamcity/logs:rw  \
    -v /data/www:/data/www:rw \
    -p 8111:8111 \
    jetbrains/teamcity-server

docker run -d --name teamcity-miniants-agent -e SERVER_URL="http://182.92.6.143:8111"  \
    -v /data/teamcity/agent/conf:/data/teamcity_agent/conf \
    -v /data/www:/data/www:rw \
    -v /var/run/docker.sock:/var/run/docker.sock  \
    jetbrains/teamcity-agent
