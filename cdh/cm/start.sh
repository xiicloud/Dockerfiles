#!/bin/bash

#service  ssh                   start
service  ntp                   start
service cloudera-scm-server-db start
service cloudera-scm-server    start

while true;do
   sleep  1000
done
