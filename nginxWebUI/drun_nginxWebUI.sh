#!/bin/bash
docker run -itd -v /datas/nginxWebUi:/home/nginxWebUI \
 -e BOOT_OPTIONS="--server.port=8010" \
 -p 8010:8010 -p 80:80 -p 443:443 \
 --privileged=true --name nginxWebUi --restart=on-failure  \
 cym1102/nginxwebui