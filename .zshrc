autoload -U promptinit; promptinit
prompt pure

autoload -U compinit; compinit -C -d ~/.zsh/.zcompdump

setopt autocd

# History
setopt appendhistory
setopt hist_ignore_dups
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

# Unix
case `uname` in
  Darwin)
    alias ls="ls -GF"
  ;;
  Linux)
    export LS_COLORS="ow=01;34"
    alias ls="ls -F --color"
  ;;
esac

alias la="ls -a"
alias ll="ls -al"

# Projects
alias panda="cd ~/Code/asset_panda_web_app/"
alias prac="cd ~/Code/hawaiianbbq/practical-vim/"
alias m101="cd ~/Code/mongoDB-university/m101js/"

# Git
alias g="git"
alias gs="git status"
alias gb="git branch"
alias gc="git checkout"
alias gcm="git checkout master"
alias gd="git diff"
alias gl="git pull"

# Rails
alias rs="rails server"
alias rc="rails console"
alias be="bundle exec"

# mongo
alias mongod4="mongod --dbpath='/usr/local/var/db/mongodb@4.0'"
alias mongod34="mongod --dbpath='/usr/local/var/db/mongodb@3.4'"

# nodenv
export PATH="$HOME/.nodenv/shims:${PATH}"

# rbenv
export PATH="$HOME/.rbenv/shims:${PATH}"

# zsh plugins
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
