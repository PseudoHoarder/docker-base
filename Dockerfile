FROM ubuntu:22.04

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN apt-get -qq update

RUN  DEBIAN_FRONTEND="noninteractive" apt-get -qq install -y git python3 python3-pip \
    locales python3-lxml aria2  wget\
    curl unzip zip gcc gnupg \
    g++ apt-transport-https \
    ca-certificates xz-utils

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8