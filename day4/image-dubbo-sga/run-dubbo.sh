#!/bin/sh

cp /etc/hosts /etc/hosts.temp
sed -i "s/.*$(hostname)/$VIMDA  $(hostname)/" /etc/hosts.temp
cat /etc/hosts.temp > /etc/hosts

sh /usr/local/tomcat/bin/startup.sh && tail -f /usr/local/tomcat/logs/catalina.out
