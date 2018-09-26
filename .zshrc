autoload -U promptinit; promptinit
prompt pure

setopt autocd

# History
setopt appendhistory
setopt hist_ignore_dups
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

# Unix
alias ls="ls -GF"
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

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# mongo
# export PATH="/usr/local/opt/mongodb@4.0/bin:$PATH"
alias mongo4="cd /usr/local/opt/mongodb@4.0/bin"
alias mongod4="./mongod --dbpath='/usr/local/var/db/mongodb@4.0'"
alias mongo34="cd /usr/local/opt/mongodb@3.4/bin"
alias mongod34="./mongod --dbpath='/usr/local/var/db/mongodb@3.4'"

# rbenv
eval "$(rbenv init -)"

# zsh plugins
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
