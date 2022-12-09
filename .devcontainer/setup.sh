#!/usr/bin/env bash

set -e

sudo apt-get update
sudo apt-get -y install --no-install-recommends apt-utils dialog 2>&1
sudo apt-get install -y \
  curl \
  git \
  sudo \
  openssh-client \
  wget \
  unzip
  
sudo add-apt-repository universe
sudo apt install fonts-firacode

sudo apt-get autoremove -y
sudo apt-get autoremove -y
sudo rm -rf /var/lib/apt/lists/*
