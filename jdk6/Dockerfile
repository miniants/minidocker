#
# DOCKER-VERSION    1.6.2
#
# Dockerizing jdk: Dockerfile for building jdk images
#
FROM       registry.aliyuncs.com/miniants/centos:7.2
MAINTAINER henry <henry@miniants.cn>

ENV JAVA_VERSION 1.6
ENV JDK_HOME /usr/java/jdk1.6.0_45/bin/java

#下载sum jdk http://download.oracle.com/otn-pub/java/jdk/8u92-b14/jdk-8u92-linux-x64.rpm
#RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn/java/jdk/6u45-b06/jdk-6u45-linux-x64-rpm.bin  && \
COPY jdk-6u45-linux-x64-rpm.bin jdk-6u45-linux-x64-rpm.bin
RUN	chmod 775 jdk-6u45-linux-x64-rpm.bin && \
	./jdk-6u45-linux-x64-rpm.bin && \
	rm -f jdk-6u45-linux-x64-rpm.bin


# Install jdk
#RUN yum -y install java-${JAVA_VERSION}-openjdk java-${JAVA_VERSION}-openjdk-devel && \
#    yum clean all
