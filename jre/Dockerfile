from csphere-debian

maintainer yj <yujian@nicescale.com>

label service=jre

env LANG C.UTF-8
env JAVA_VERSION 7.79
env JAVA_INSTALL_VERSION 7u79-2.5.6-1~deb8u1

run apt-get update && \
    apt-get install -y  openjdk-7-jre="$JAVA_INSTALL_VERSION" && \
    apt-get clean && \
    rm -fr  /var/lib/apt/lists

workdir /app
