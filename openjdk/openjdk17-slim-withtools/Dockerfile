# 创建 registry.cn-beijing.aliyuncs.com/miniants/openjdk17-slim-withtools:v1.2
FROM registry.cn-beijing.aliyuncs.com/miniants/openjdk:17-jdk-slim

# 更新系统并安装ping和telnet
RUN apt-get update && \
    apt-get install -y iputils-ping telnet && \
    apt-get install -y vim && \
    apt-get install -y curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
