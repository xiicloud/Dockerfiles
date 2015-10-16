FROM  php-apache
MAINTAINER  yj <yujian@nicescale.com>

workdir /app

ENV WORDPRESS_VERSION 4.3

RUN apt-get update  &&  \
    apt-get install -y wget && \
    wget -O /tmp/wordpress.tar.gz https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz  && \
    apt-get purge -y wget && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -fr  /var/lib/apt/lists &&  \
    tar -xzf /tmp/wordpress.tar.gz -C /app/ --strip-components=1  && \
    rm /tmp/wordpress.tar.gz  && \
    chown -R www-data:www-data /app

VOLUME /app

COPY 000-default.conf  /etc/apache2/sites-enabled/000-default.conf  
COPY docker-entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh" , "apache2-foreground"]
