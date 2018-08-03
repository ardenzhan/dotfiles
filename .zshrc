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
alias pandaw="cd ~/Code/asset_panda_worker/"
alias grav="cd ~/Code/gravity-cloud/"
alias prac="cd ~/Code/hawaiianbbq/practical-vim/"
alias hobby="cd ~/Code/hobby-sci/"

# Git
alias g="git"
alias gs="git status"
alias gb="git branch"
alias gc="git checkout"
alias gcm="git checkout master"
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
export PATH="/usr/local/opt/mongodb@3.4/bin:$PATH"

# rbenv
eval "$(rbenv init -)"

# zsh plugins
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
