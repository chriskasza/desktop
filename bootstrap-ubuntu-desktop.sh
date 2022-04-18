#!/bin/sh
set -ex

sudo apt update

# Docker dependencies
sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo apt upgrade -y

# Preferred tools
sudo apt install -y \
    gnome-tweak-tool \
    gnupg-agent \
    tmux \
    vim \
    zsh
    
#####
# Install Oh My Zsh
#####
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#####
# Install nerd-fonts and powerlevel10k
#####
git clone --depth=1 https://github.com/ryanoasis/nerd-fonts.git $HOME/.nerd-fonts
$HOME/.nerd-fonts/install.sh Meslo
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#####
# Install docker
#####
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
sudo systemctl enable docker

#####
# Install docker-compose
#####
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

#####
# Create SSH key
#####
ssh-keygen -b 2048 -t rsa -f $HOME/.ssh -q -N ""

#####
# Download .dot files
#####
wget https://raw.githubusercontent.com/chriskasza/desktop/master/.tmux.conf
wget https://raw.githubusercontent.com/chriskasza/desktop/master/.zshrc
wget https://raw.githubusercontent.com/chriskasza/desktop/master/.p10k.zsh

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
