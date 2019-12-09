#!/bin/sh
set -ex

sudo apt update && sudo apt upgrade -y
sudo apt install -y zsh vim tmux gnome-tweak-tool
sudo apt install -y fonts-powerline powerline
sudo snap install chromium chromium-ffmpeg docker
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
