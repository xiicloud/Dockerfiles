from  ubuntu:14.04

add  sources.list.trusty  /etc/apt/sources.list
run  apt-get update  && \
     apt-get install  -y  openssh-client  openssh-server  curl \
     apt-transport-https  bind9-host   ntp

# passwordless ssh
copy  hadoop_key     /root/.ssh/id_rsa
copy  hadoop_key.pub /root/.ssh/authorized_keys

add ssh_config /root/.ssh/config
run chmod 600 /root/.ssh/config
run chown root:root /root/.ssh/config

run sed  -i '/^[^#]*UsePAM/ s/.*/#&/'  /etc/ssh/sshd_config
run sed  -i 's/Port[[:space:]]*22/#&/' /etc/ssh/sshd_config
run echo "UsePAM no" >> /etc/ssh/sshd_config
run echo "Port 2122" >> /etc/ssh/sshd_config

cmd  service ssh start  &&  while true;do  sleep 1000; done
