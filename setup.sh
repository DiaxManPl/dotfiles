#!/bin/env bash

apt-get update
apt-get install -y \
  curl \
  git \
  sudo \
  openssh-client \
  wget \
  unzip
  
add-apt-repository universe
apt install fonts-firacode

apt-get autoremove -y
apt-get autoremove -y
rm -rf /var/lib/apt/lists/*
