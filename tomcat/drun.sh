#!/bin/bash
docker run -d -p 8100:8080 --name tomcat_example \
	miniants/tomcat:8.0.30

