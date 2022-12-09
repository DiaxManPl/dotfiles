apt-get update
apt-get -y install --no-install-recommends apt-utils dialog 2>&1
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
