#!/bin/bash
docker build -t registry.aliyuncs.com/miniants/tomcat:8.0.33 .
docker push registry.aliyuncs.com/miniants/tomcat:8.0.33
