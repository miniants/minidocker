#
# MAINTAINER        henry <henry@miniants@cn>
# DOCKER-VERSION    1.6.2
#
# Dockerizing TOMCAT: Dockerfile for building TOMCAT images
#
FROM       miniants/jdk:1.8.0
MAINTAINER henry <henry@miniants@cn>

ENV TOMCAT_MAJOR_VERSION 8
ENV TOMCAT_MINOR_VERSION 8.0.33
ENV CATALINA_HOME /tomcat
ENV APP_DIR ${CATALINA_HOME}/webapps/

# Install tomcat
RUN wget http://apache.opencas.org/tomcat/tomcat-8/v8.0.33/bin/apache-tomcat-8.0.33.tar.gz

RUN tar zxf apache-tomcat-*.tar.gz && \
    rm apache-tomcat-*.tar.gz && \
    mv apache-tomcat* tomcat

ADD scripts /scripts

EXPOSE 8080 8443

ENTRYPOINT ["/scripts/run"]

ONBUILD ADD *.war ${APP_DIR}
