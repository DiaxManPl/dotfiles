#!/bin/env bash

sudo apt-get update
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
