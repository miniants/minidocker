# 创建 registry.cn-beijing.aliyuncs.com/miniants/openjdk17-slim-withtools-tls1:v1.2
FROM registry.cn-beijing.aliyuncs.com/miniants/openjdk17-slim-withtools:v1.2

# 开启tls1支持，主要是mssql的低版本需要
RUN sed -i 's/jdk.tls.disabledAlgorithms=.*TLSv1[^,]*,*/jdk.tls.disabledAlgorithms=/g' /usr/local/openjdk-17/conf/security/java.security

