#pull down jdk-tomcat-8:v1.0.0 image
FROM 192.168.200.56:8000/dist/tomcat:8.5.15-jre8-alpine
MAINTAINER weifj

COPY ./service-monitor /usr/local/tomcat/webapps/service-monitor/
# Expose ports.  
EXPOSE 2210  

#define entry point which will be run first when the container starts up
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && tail -F /usr/local/tomcat/logs/catalina.out
