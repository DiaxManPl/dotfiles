#!/bin/sh
sudo apt-get update
sudo apt-get -y install --no-install-recommends apt-utils dialog 2>&1
sudo apt-get install -y \
  curl \
  git \
  gnupg2 \
  jq \
  sudo \
  openssh-client \
  less \
  iproute2 \
  procps \
  wget \
  unzip \
  apt-transport-https \
  lsb-release

wget https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip
sudo unzip Fira_Code_v6.2.zip -d /usr/share/fonts
sudo fc-cache -f -v

sudo apt-get autoremove -y
sudo apt-get autoremove -y
sudo rm -rf /var/lib/apt/lists/*
