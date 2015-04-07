FROM centos:centos6
MAINTAINER "william" <wlj@nicescale.com>
ENV container docker

# Update all base packages to keep them fresh, downgrading libselinux to remove
# centosplus repository dependency
RUN yum -y install wget; yum clean all
RUN wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-6.repo; \
    wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-6.repo
RUN yum -y downgrade libselinux libselinux-utils; yum -y update; yum clean all

# Install initscripts, but turn off all services by default
RUN yum -y install initscripts; yum clean all; rm /etc/rc.d/rc*.d/*
RUN yum -y --setopt='group_package_types=mandatory' install @core \
  authconfig file openssh-clients tar which curl telnet; \
  yum clean all;

RUN echo "UseDNS no" >> /etc/ssh/sshd_config; \
    echo "GSSAPIAuthentication no" >> /etc/ssh/sshd_config

RUN echo "NETWORKING=yes" > /etc/sysconfig/network;

# Disable ttys
RUN mv /etc/init/serial.conf /etc/init/serial.conf.disabled; \
mv /etc/init/tty.conf /etc/init/tty.conf.disabled; \
mv /etc/init/start-ttys.conf /etc/init/start-ttys.conf.disabled

# change timezone to Shanghai
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# Set the init command to run at boot by default
CMD ["/sbin/init"]
