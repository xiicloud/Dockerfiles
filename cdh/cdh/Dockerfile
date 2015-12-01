from  cm-cdh-base

run   curl http://archive.cloudera.com/cm5/ubuntu/trusty/amd64/cm/archive.key | apt-key add -  && \
      curl http://archive.cloudera.com/cm5/ubuntu/trusty/amd64/cm/cloudera.list > /etc/apt/sources.list.d/cloudera-manager.list   &&  \
      curl http://archive.cloudera.com/cdh5/ubuntu/trusty/amd64/cdh/archive.key | apt-key add -  && \
      curl http://archive.cloudera.com/cdh5/ubuntu/trusty/amd64/cdh/cloudera.list > /etc/apt/sources.list.d/cloudera.list

run  curl -o  /tmp/cdh5-repository_1.0_all.deb   https://archive.cloudera.com/cdh5/one-click-install/trusty/amd64/cdh5-repository_1.0_all.deb   &&  \
     dpkg -i  /tmp/cdh5-repository_1.0_all.deb  && \
     apt-get  update    && \
     apt-get install -y oracle-j2sdk1.6   oracle-j2sdk1.7  &&   \
     apt-get install -y cloudera-manager-agent cloudera-manager-daemons   && \
     apt-get install -y avro-tools crunch flume-ng hadoop-hdfs-fuse hadoop-hdfs-nfs3 hadoop-httpfs hadoop-kms hbase-solr hive-hbase hive-webhcat hue-beeswax hue-hbase hue-impala hue-pig hue-plugins hue-rdbms hue-search hue-spark hue-sqoop hue-zookeeper impala impala-shell kite llama mahout oozie pig pig-udf-datafu search sentry solr-mapreduce spark-core spark-master spark-worker spark-history-server spark-python sqoop sqoop2 whirr 

add  start.sh   /usr/local/bin/start.sh

cmd  /usr/local/bin/start.sh
