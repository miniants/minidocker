# 使用官方的 Gradle 镜像作为基础镜像
FROM gradle:jdk17-alpine

# 更新并安装依赖
RUN apk add --no-cache \
    curl \
    gettext \
    bash \
    && curl -L https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl

# 设置工作目录
WORKDIR /home/gradle


# 运行 Gradle 构建
RUN gradle -version