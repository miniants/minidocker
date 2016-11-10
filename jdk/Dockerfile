#
# DOCKER-VERSION    1.6.2
#
# Dockerizing jdk: Dockerfile for building jdk images
#
FROM       registry.aliyuncs.com/miniants/centos:7.2
MAINTAINER henry <henry@miniants.cn>

ENV JAVA_VERSION 1.8
ENV JDK_HOME /usr/java/jdk1.8.0_92/bin/java

#下载sum jdk http://download.oracle.com/otn-pub/java/jdk/8u92-b14/jdk-8u92-linux-x64.rpm
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u92-b14/jdk-8u92-linux-x64.rpm && \
	yum install -y jdk-8u92-linux-x64.rpm && \
	rm -f jdk-8u92-linux-x64.rpm

COPY US_export_policy.jar /usr/java/jdk1.8.0_92/jre/lib/security/US_export_policy.jar
COPY local_policy.jar /usr/java/jdk1.8.0_92/jre/lib/security/local_policy.jar

# Install jdk
#RUN yum -y install java-${JAVA_VERSION}-openjdk java-${JAVA_VERSION}-openjdk-devel && \
#    yum clean all
