#!/bin/bash
docker run -d -p 6010:8080 --name jenkins \
	-v /data/jenkins_home:/var/jenkins_home \
	-v /usr/bin/docker:/usr/bin/docker \
	-v /var/run/docker.sock:/var/run/docker.sock \
	miniants/jenkins:1.625.3

