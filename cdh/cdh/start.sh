#!/bin/bash

if [ -z  "$CM_HOST"  ];then
    echo  "need set cloudera manager server hostname"  && exit 1
fi

while true;do
   if  nc -z  $CM_HOST  7182;then
       break
   else  
       echo "cloudera manager server not finish start"  &&  sleep 5
   fi
done

ip=$(ifconfig eth0|awk '/inet addr/{print substr($2, 6)}')
host=$(host -t ptr $ip |awk '{print substr($5, 1, length($5)-1 )}')

hostname  -b  $host
cat  >  /etc/hosts  <<EOF
$ip     $host
127.0.0.1   localhost
EOF

sed -i  s/server_host=.*/server_host=$CM_HOST/   /etc/cloudera-scm-agent/config.ini
sed -i  s/#*[[:space:]]*listening_hostname=.*/listening_hostname=$host/  /etc/cloudera-scm-agent/config.ini
sed -i  s/#*[[:space:]]*reported_hostname=.*/reported_hostname=$host/  /etc/cloudera-scm-agent/config.ini

service  ntp    start 
service  cloudera-scm-agent  start 

while  true;do
    sleep  1000
done
