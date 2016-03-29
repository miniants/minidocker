#
# MAINTAINER        henry <henry@miniants@cn>
# DOCKER-VERSION    1.6.2
#
# Dockerizing TOMCAT: Dockerfile for building TOMCAT images
#
FROM       miniants/jdk:1.6.0
MAINTAINER henry <henry@miniants@cn>

ENV TOMCAT_MAJOR_VERSION 6
ENV TOMCAT_MINOR_VERSION 6.0.45
ENV CATALINA_HOME /tomcat
ENV APP_DIR ${CATALINA_HOME}/webapps/

# Install tomcat
RUN wget http://mirrors.cnnic.cn/apache/tomcat/tomcat-6/v6.0.45/bin/apache-tomcat-6.0.45.tar.gz

RUN tar zxf apache-tomcat-*.tar.gz && \
    rm apache-tomcat-*.tar.gz && \
    mv apache-tomcat* tomcat

ADD scripts /scripts

EXPOSE 8080 8443

ENTRYPOINT ["/scripts/run"]

ONBUILD ADD *.war ${APP_DIR}
