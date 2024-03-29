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
HISTFILE=$HOME/.zsh_history

# zsh plugins
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_DEFAULT_OPTS='--color bg+:0,pointer:5'

_fzf_complete_pass() {
  _fzf_complete +m -- "$@" < <(
    local prefix
    prefix="${PASSWORD_STORE_DIR:-$HOME/.password-store}"
    command find -L "$prefix" \
      -name "*.gpg" -type f | \
      sed -e "s#${prefix}/\{0,1\}##" -e 's#\.gpg##' -e 's#\\#\\\\#' | sort
  )
}

export FZF_COMPLETION_TRIGGER=''
bindkey '^T' fzf-completion
bindkey '^I' $fzf_default_completion

# asdf
. $HOME/.asdf/asdf.sh

# adb
# export PATH=$PATH:~/platform-tools

# pass
export PASSWORD_STORE_ENABLE_EXTENSIONS=true

# gpg
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
gpg-connect-agent updatestartuptty /bye > /dev/null
