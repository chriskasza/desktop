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

# Ubuntu server
# git curl