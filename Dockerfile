FROM tomcat:10-jdk21-openjdk
MAINTAINER Toai Vo <toaivo@stanford.edu>

ARG USERUID

COPY files/context.xml /usr/local/tomcat/webapps.dist/examples/META-INF
RUN  mv /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

EXPOSE 8080
