FROM ubuntu:20.04

RUN apt update \
  && apt install wget curl openssl apt-transport-https -y

RUN curl -sL https://deb.nodesource.com/setup_14.x -o setup_14.sh \
  && sh ./setup_14.sh

RUN apt update \
  && apt install nodejs -y \
  && apt install python3.9 -y

RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 1