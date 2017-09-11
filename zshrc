# Path to your oh-my-zsh installation.
export ZSH=/Users/janekkurzydlo/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git rails ruby brew bundler common-aliases sublime)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin"
export PATH="$PATH:/Users/janekkurzydlo/Desktop/Workspace/rabbit-server/rabbitmq_server-2.8.7/sbin"
export PATH="$PATH:/usr/local/Cellar/mysql56/5.6.36_1/bin"

#anaconda
export PATH="/Users/janekkurzydlo/anaconda/bin:$PATH"

#chrome driver
export PATH="/Users/janekkurzydlo/Desktop/Workspace/WebDriver:$PATH"


source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/base"

# Aliases
alias v="vim"
alias vv="vim ."
alias rs="bundle exec rspec spec"
alias r="bundle exec rspec"
alias c="bundle exec rails c"
alias s="bundle exec rails s"
alias gc="grid console"
alias gcp='bash -xc '\''grid console $0 production'\'''
alias gcsb='bash -xc '\''grid console $0 sandbox'\'''
alias gcsg='bash -xc '\''grid console $0 staging'\'''
alias rspec='nocorrect rspec'


# For google scripts
alias grun="bundle exec ruby execute"

# RBENV
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# NVM
export NVM_DIR="$HOME/.nvm"
  . "$(brew --prefix nvm)/nvm.sh"

# Rabbitmq
PATH=$PATH:/usr/local/sbin

# default editor
export EDITOR=vim

# start new tmux session named after current directory
mux() {mux
    tmux new -s $(basename $(pwd))
}

# create a directory and cd into it
mkcd() {
    mkdir -p "$1" && cd "$1"
}
