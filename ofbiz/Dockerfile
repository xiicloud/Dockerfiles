from  ubuntu:14.04

copy sources.list.trusty  /etc/apt/sources.list 

run   apt-get update && \
      apt-get install -y --no-install-recommends  wget  unzip   openjdk-7-jre  openjdk-7-jdk  && \
      wget  http://apache.mirrors.hoobly.com/ofbiz/apache-ofbiz-13.07.02.zip && \
      unzip  apache-ofbiz-13.07.02.zip

workdir  apache-ofbiz-13.07.02 

run   ./ant  && \
      ./ant load-demo  && \
      ./ant load-extseed  
     
cmd  ./ant load-demo start  
