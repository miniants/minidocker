#!/bin/bash
docker run -d -p 8013:8080 --name tomcat_cbs4zh_temp \
	--restart=on-failure \
	miniants/cbs4zh:temp

