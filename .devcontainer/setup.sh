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
  

fonts_dir="${HOME}/.local/share/fonts"
if [ ! -d "${fonts_dir}" ]; then
    echo "mkdir -p $fonts_dir"
    mkdir -p "${fonts_dir}"
else
    echo "Found fonts dir $fonts_dir"
fi

version=6.2
curl --fail --location --show-error https://github.com/tonsky/FiraCode/releases/download/${version}/Fira_Code_v${version}.zip --output ${zip}
unzip -o -q -d ${fonts_dir} ${zip}
rm ${zip}

echo "fc-cache -f"
fc-cache -f

sudo apt-get autoremove -y
sudo apt-get autoremove -y
sudo rm -rf /var/lib/apt/lists/*
