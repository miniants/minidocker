#
# MAINTAINER        henry <henry@miniants@cn>
# DOCKER-VERSION    1.6.2
#
# Dockerizing jre: Dockerfile for building jre images
#
FROM       miniants/centos:7.1
MAINTAINER henry <henry@miniants@cn>

ENV JAVA_VERSION 1.8.0
ENV JRE_HOME /usr/lib/jvm/jre

# Install jre
RUN yum -y install java-${JAVA_VERSION}-openjdk mysql && \
    yum clean all
