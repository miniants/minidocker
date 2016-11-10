#!/bin/bash
docker build -t registry.aliyuncs.com/miniants/jdk:1.8 .
docker push registry.aliyuncs.com/miniants/jdk:1.8
