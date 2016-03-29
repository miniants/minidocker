#!/bin/bash
docker run -d -p 8100:8080 --name tomcat_example \
	miniants/tomcat:6.0.45

