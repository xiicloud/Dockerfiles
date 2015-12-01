FROM  nicescale/debian
maintainer  yj <yujian@nicescale.com>

LABEL service=php

RUN apt-get update && \
    apt-get -y install   \
    php5-fpm          \
    php5-mysql        \
    php5-curl         \
    php5-cli   &&     \
    apt-get clean &&  \
    rm -fr  /var/lib/apt/lists

workdir /app

add php-fpm.conf /etc/php5/fpm/php-fpm.conf
add docker-php-ext-install /usr/local/bin/

expose 80 443 9000

cmd ["php5-fpm"]
