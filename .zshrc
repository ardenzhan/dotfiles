fpath=( "$HOME/.zsh/zfunctions" $fpath )
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

# ssh-agent
case `uname` in
  Linux)
    eval "$(ssh-agent -s)"
    ssh-add $HOME/.ssh/id_rsa
  ;;
esac

# zsh plugins
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

# asdf
. /usr/local/opt/asdf/asdf.sh
