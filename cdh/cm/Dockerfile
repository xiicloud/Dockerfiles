from  cm-cdh-base

run   apt-get update   && \
      #apt-get install -y  curl &&  \
      curl http://archive.cloudera.com/cm5/ubuntu/trusty/amd64/cm/archive.key | apt-key add -  && \
      curl http://archive.cloudera.com/cm5/ubuntu/trusty/amd64/cm/cloudera.list > /etc/apt/sources.list.d/cloudera-manager.list   &&  \
      apt-get update   &&  \
      apt-get install -y  cloudera-manager-server-db-2  oracle-j2sdk1.6  oracle-j2sdk1.7

copy  start.sh   /usr/local/bin/start.sh

cmd  ["start.sh"]
