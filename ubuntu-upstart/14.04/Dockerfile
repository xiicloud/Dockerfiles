from ubuntu-upstart:14.04
run ln -sf /usr/share/zoneinfo/Asia/Harbin /etc/localtime && \
    echo Asia/Harbin > /etc/timezone
add sources.list /etc/apt/
run DEBIAN_FRONTEND=noninteractive \
    apt-get -y update && \
    apt-get -y dist-upgrade && \
    apt-get -y install --no-install-recommends --no-install-suggests wget curl telnet vim git && \
    apt-get -y autoremove && \
    apt-get -y clean
