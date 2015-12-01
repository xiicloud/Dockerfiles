from  nicescale/debian
maintainer yj <yujian@nicescale.com>

label service=nginx

workdir /app

run apt-get update && \
    apt-get install -y wget && \
    wget http://nginx.org/keys/nginx_signing.key && \
    apt-key add nginx_signing.key && \
    rm -fr nginx_signing.key && \
    {  \
     echo deb http://nginx.org/packages/debian/ jessie nginx; \
     echo deb-src http://nginx.org/packages/debian/ jessie nginx; \
    }  >  /etc/apt/sources.list.d/nginx.list  &&  \
    apt-get update  && \
    apt-get install -y nginx && \
    apt-get purge -y wget && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -fr  /var/lib/apt/lists

add nginx.conf /etc/nginx/nginx.conf
add default.conf /etc/nginx/conf.d/default.conf

expose 80 443

cmd ["nginx"]
