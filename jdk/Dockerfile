#
# DOCKER-VERSION    1.6.2
#
# Dockerizing jdk: Dockerfile for building jdk images
#
FROM       miniants/centos:7.2
MAINTAINER henry <henry@miniants.cn>

ENV JAVA_VERSION 1.8.0
ENV JDK_HOME /usr/lib/jvm/java-1.8.0-openjdk

# Install jdk
RUN yum -y install java-${JAVA_VERSION}-openjdk java-${JAVA_VERSION}-openjdk-devel && \
    yum clean all
