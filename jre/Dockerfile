from  nicescale/debian

maintainer yj <yujian@nicescale.com>

label service=jre

env LANG C.UTF-8

run apt-get update && \
    apt-get install -y --no-install-recommends openjdk-7-jre && \
    apt-get clean && \
    rm -fr  /var/lib/apt/lists

workdir /app
