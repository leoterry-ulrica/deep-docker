# deep-docker
docker深度学习

*常用参数*：

FROM命令。用法，FROM <image>:<tag>。FROM命令告诉docker我们构建的镜像是以哪个(发行版)镜像为基础的

RUN命令。用法RUN <command>。RUN 后面接要执行的命令，比如，我们想在镜像中安装vim，只需在Dockfile中写入RUN yum install -y vim

ENV命令。用法,ENV <key> <value>。ENV命令主要用于设置容器运行时的环境变量

ADD命令。用法，ADD <src> <dest>。ADD主要用于将宿主机中的文件添加到镜像中

## day1
>1. 创建Dockerfile，os：centos，包含jdk-8和tomcat-8环境。
>2. 创建image  
build -t weifj/centos:jdk-tomcat-8 --rm=true .

