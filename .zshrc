# Install rbenv
# git clone https://github.com/rbenv/rbenv.git ~/.rbenv

# Install OhMyZsh
# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="gnzh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bundler rake ruby rails ubuntu)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias mysql-rxs="mysql -uroot -phummingbird --socket=/tmp/mysql.sock -A rxsecurity_webapp_development"
alias git-root='cd $(git rev-parse --show-cdup)'
alias rspec='rspec --color --format documentation'
alias ss='usr/bin/ag'

unsetopt share_history

# colors
#if [ "$TERM" = "linux" ]; then
#  echo -en "\e]P0232323" #black
#  echo -en "\e]P82B2B2B" #darkgrey
#  echo -en "\e]P1D75F5F" #darkred
#  echo -en "\e]P9E33636" #red
#  echo -en "\e]P287AF5F" #darkgreen
#  echo -en "\e]PA98E34D" #green
#  echo -en "\e]P3D7AF87" #brown
#  echo -en "\e]PBFFD75F" #yellow
#  echo -en "\e]P48787AF" #darkblue
#  echo -en "\e]PC7373C9" #blue
#  echo -en "\e]P5BD53A5" #darkmagenta
#  echo -en "\e]PDD633B2" #magenta
#  echo -en "\e]P65FAFAF" #darkcyan
#  echo -en "\e]PE44C9C9" #cyan
#  echo -en "\e]P7E5E5E5" #lightgrey
#  echo -en "\e]PFFFFFFF" #white
#  clear #for background artifacting
#fi

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# initialize rbenv
eval "$(rbenv init -)"

# python virtualenv
#. /usr/local/bin/virtualenvwrapper.sh

# rails production secret
SECRET_KEY_BASE="11f633f17386215f30726b264fa3120f419b07d189616bf192461c1be4d6123f637e8825545141d243869c4b23b6be064ddf7d9a8bba00e23636e2781f22d016"

# stripe keys for stripe-test project
export STRIPE_PUBLISHABLE_KEY="pk_test_HLhPlTwyP0nB7TI00ruinova"
export STRIPE_SECRET_KEY="sk_test_H9iAu5Dgvt9Mn511eeur7F4P"
