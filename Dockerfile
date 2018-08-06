FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Budapest LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8

RUN apt-get update -y \
  && apt-get upgrade -y \
  && apt-get dist-upgrade -y \
  && apt-get install -y \
  aptitude \
  software-properties-common \
  python-setuptools \
  python-pip \
  curl \
  lynx \
  links \
  wget \
  dnsutils \
  iputils-ping \
  mtr \
  strace \
  htop \
  openssl \
  tcpdump \
  tcpflow \
  telnet \
  dsniff \
  traceroute \
  net-tools \
  mc \
  nano \
  rsync \
  git \
  unzip \
  pwgen \
  locales \
  && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
  && echo $TZ > /etc/timezone \
  && echo "en_US UTF-8" >/etc/locale.gen \
  && echo "en_US.UTF-8 UTF-8" >>/etc/locale.gen \
  && locale-gen
