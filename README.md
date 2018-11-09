# desktop

## Install rbenv
```
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash
sudo apt install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev
sudo dnf install -y gcc bzip2 openssl-devel libyaml-devel libffi-devel readline-devel zlib-devel gdbm-devel ncurses-devel
rbenv install 2.5.1
```

## Install nvm
```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
```

## Install tmux
```
apt install -y tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
- open tmux and run `CTRL-A I`
