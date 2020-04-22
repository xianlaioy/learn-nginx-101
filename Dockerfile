FROM ubuntu:18.04

RUN sed -i -r 's/([a-zA-Z-]+\.)?(archive|security)\.ubuntu\.com/mirrors.aliyun.com/g' /etc/apt/sources.list

RUN apt-get update && apt-get install -y build-essential libtool \
        libpcre3 libpcre3-dev \
        zlib1g-dev \
        openssl \
        curl

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
