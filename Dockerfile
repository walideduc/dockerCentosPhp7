FROM centos:latest
MAINTAINER Waled
#https://github.com/CentOS/CentOS-Dockerfiles/blob/master/httpd/centos7/Dockerfile

RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install httpd && \
    yum clean all

#RUN rpm -ivh http://rpms.remirepo.net/enterprise/remi-release-7.rpm
 
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm && \
    yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
    yum-config-manager --enable remi-php71
RUN yum install -y php

RUN php -v
    
			
EXPOSE 80
