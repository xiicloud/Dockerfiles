FROM centos:centos7
MAINTAINER "william" <wlj@nicescale.com>
ENV container docker

# change timezone to Shanghai
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN yum -y install wget; yum clean all
RUN wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo; \
    wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo

RUN yum -y update; yum -y install file which curl telnet; yum clean all
