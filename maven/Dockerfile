#
# MAINTAINER        henry <henry@miniants.cn>
# DOCKER-VERSION    1.6.2
#
# Dockerizing maven: Dockerfile for building maven images
#
FROM       registry.aliyuncs.com/miniants/jdk:1.8
MAINTAINER henry <henry@miniants.cn>

ENV MAVEN_VERSION 3.3.9
ENV MAVEN_HOME /opt/maven

# Install maven && nodejs
ADD node-v6.3.0-linux-x64.tar.gz node-v6.3.0-linux-x64.tar.gz
RUN wget -P /opt/ http://mirrors.cnnic.cn/apache/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
    tar xzf /opt/apache-maven-${MAVEN_VERSION}-bin.tar.gz -C /opt && \
    mv /opt/apache-maven-${MAVEN_VERSION} /opt/maven  && \
    ln -s /opt/maven/bin/mvn /usr/bin/mvn && \
    tar --strip-components 1 -xzivf node-v6.3.0-linux-x64.tar.gz -C /usr/local && \
    npm install -g cnpm --registry=https://registry.npm.taobao.org && \
    cnpm install -g webpack


COPY settings.xml /opt/maven/conf/settings.xml

ADD hello /hello
RUN cd /hello && \
    mvn clean install -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true
