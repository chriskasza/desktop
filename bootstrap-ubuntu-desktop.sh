#!/bin/sh
set -ex

sudo apt update
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    software-properties-common
sudo apt upgrade -y
sudo apt install -y \
    fonts-powerline \
    gnome-tweak-tool \
    gnupg-agent \
    powerline \
    tmux \
    vim \
    zsh
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# sudo add-apt-repository \
#    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#    $(lsb_release -cs) \
#    stable"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   disco \
   stable"
sudo apt update
sudo apt install -y docker-ce
sudo usermod -aG docker $USER
sudo systemctl enable docker
sudo curl -L \
    "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" \
    -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo snap install chromium chromium-ffmpeg
sudo snap install --classic code slack
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
wget https://raw.githubusercontent.com/chriskasza/desktop/master/.tmux.conf
wget https://raw.githubusercontent.com/chriskasza/desktop/master/.zshrc

echo Start tmux and issue command, CTRL+a I

# Ubuntu server
# git curl

## Install rbenv
# curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash
# sudo apt install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev
# sudo dnf install -y gcc bzip2 openssl-devel libyaml-devel libffi-devel readline-devel zlib-devel gdbm-devel ncurses-devel

## Install nodenv
# curl -fsSL https://github.com/nodenv/nodenv-installer/raw/master/bin/nodenv-installer | bash

## Install pyenv
# curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
