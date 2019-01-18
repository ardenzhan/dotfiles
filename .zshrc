fpath=( "$HOME/.zsh/zfunctions" $fpath )
autoload -U promptinit; promptinit
prompt pure

autoload -U compinit; compinit -C -d ~/.zsh/.zcompdump

bindkey -v

setopt autocd

# History
setopt appendhistory
setopt hist_ignore_dups
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.history

# Unix
case `uname` in
  Darwin)
    alias ls="ls -1GF"
  ;;
  Linux)
    export LS_COLORS="ow=01;34"
    alias ls="ls -1F --color"

    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa
  ;;
esac

alias la="ls -a"
alias ll="ls -al"

# Projects
alias panda="cd ~/code/asset_panda_web_app/"
alias apo="cd ~/code/apo-billing-reports-api/"
alias prac="cd ~/code/hawaiianbbq/practical-vim/"
alias m101="cd ~/code/mongoDB-university/m101js/"
alias guru="cd ~/code/a-cloud-guru/"

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

# nodenv
export PATH="$HOME/.nodenv/shims:${PATH}"

# rbenv
export PATH="$HOME/.rbenv/shims:${PATH}"

# zsh plugins
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
