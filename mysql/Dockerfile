from  csphere-debian 

maintainer yj <yujian@nicescale.com>

label service=mysql

run apt-get update \
    &&  DEBIAN_FRONTEND=noninteractive  apt-get install -y  \
        mysql-server-5.5  \
        mysql-client-5.5 \
    &&  sed -i 's/bind-address.*/bind-address = 0.0.0.0/' /etc/mysql/my.cnf  \
    &&  apt-get clean \
    &&  rm -fr  /var/lib/apt/lists \

volume /var/lib/mysql

copy docker-entrypoint.sh /entrypoint.sh

expose 3306

cmd ["/entrypoint.sh", "mysqld"]
