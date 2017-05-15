#!/bin/sh

cp /etc/hosts /etc/hosts.temp
sed -i "s/.*$(hostname)/$VIMDA  $(hostname)/" /etc/hosts.temp
cat /etc/hosts.temp > /etc/hosts

sh /opt/soft/apache-tomcat-8.5.14/bin/startup.sh && tail -f /opt/soft/apache-tomcat-8.5.14/logs/catalina.out
