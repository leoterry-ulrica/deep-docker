#pull down centos image
FROM centos
MAINTAINER weifj
#create foler /opt/soft
RUN mkdir -p /opt/soft
#copy jdk and tomcat into image
ADD ./jdk1.8.0_77.tar.gz /opt/soft/
ADD ./apache-tomcat-8.5.14.tar.gz /opt/soft/
#set environment variables
ENV JAVA_HOME /opt/soft/jdk1.8.0_77
ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV CATALINA_HOME /opt/soft/apache-tomcat-8.5.14
ENV CATALINA_BASE /opt/soft/apache-tomcat-8.5.14
ENV PATH $JAVA_HOME/bin:$CATALINA_HOME/lib:$CATALINA_HOME/bin:$PATH

# Expose ports.  
EXPOSE 8765

#define entry point which will be run first when the container starts up
#如果需要进入容器，则建议把以下命令屏蔽
ENTRYPOINT /opt/soft/apache-tomcat-8.5.14/bin/startup.sh && tail -F /opt/soft/apache-tomcat-8.5.14/logs/catalina.out
