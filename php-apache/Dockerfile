FROM  nicescale/debian
MAINTAINER  yj <yujian@nicescale.com>

LABEL service=php

RUN  apt-get update &&  \
     apt-get -y install \
     curl \
     apache2 \
     libapache2-mod-php5 \
     php5-mysql \
     php5-gd \
     php5-curl && \ 
     apt-get clean && \
     rm -fr  /var/lib/apt/lists &&  \
     a2enmod php5  && \
     echo "ServerName localhost" >> /etc/apache2/apache2.conf 

COPY apache2-foreground     /usr/bin/
COPY docker-php-ext-install /usr/bin/

workdir /app

run mv /var/www/html/* /app/ \
	&& rmdir /var/www/html \
	&& ln -s /app /var/www/html

expose 80

cmd ["apache2-foreground"]
