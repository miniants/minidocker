#!/bin/bash
docker run -d -p 8013:8080 --name cbs4zh_temp \
	--restart=on-failure \
	registry.aliyuncs.com/miniants/cbs4zh:temp

