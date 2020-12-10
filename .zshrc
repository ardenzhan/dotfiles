fpath+=("$HOME/.zsh/pure")
autoload -U promptinit; promptinit
prompt pure

autoload -U compinit; compinit -C -d $HOME/.zsh/.zcompdump

bindkey -v
export EDITOR=$(which vim)

setopt autocd

# Aliases
source $HOME/.aliases

# History
setopt appendhistory
setopt hist_ignore_dups
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$HOME/.history

# zsh plugins
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_DEFAULT_OPTS='
  --color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C
  --color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B
'

# asdf
. $HOME/.asdf/asdf.sh

# adb
export PATH=$PATH:~/platform-tools
