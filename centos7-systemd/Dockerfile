FROM centos:centos7

MAINTAINER william <wlj@nicescale.com>

ENV container docker

RUN yum -y install wget; yum clean all
RUN wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo; \
    wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo

RUN yum -y update; yum -y swap -- remove fakesystemd -- install systemd systemd-libs wget curl telnet; yum clean all

RUN systemctl mask dev-mqueue.mount dev-hugepages.mount \
    systemd-remount-fs.service sys-kernel-config.mount \
    sys-kernel-debug.mount sys-fs-fuse-connections.mount

RUN systemctl mask display-manager.service systemd-logind.service

RUN systemctl disable graphical.target; systemctl enable multi-user.target

ADD dbus.service /etc/systemd/system/dbus.service

VOLUME ["/sys/fs/cgroup"]

VOLUME ["/run"]

CMD  ["/usr/lib/systemd/systemd"]

