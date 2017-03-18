FROM ubuntu:14.04
MAINTAINER John Cheng "github@johncheng.com"

RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y python-pypoker-eval && \
  rm -rf /var/lib/apt/lists/*
