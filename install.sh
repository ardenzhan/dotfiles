#!/bin/bash

# create parent folders
VIM="$HOME/.vim"
ZSH="$HOME/.zsh"

mkdir -p $VIM/autoload \
         $VIM/bundle \
         $VIM/colors \
         $ZSH/zfunctions

get_repo() {
  local repo_source=$1
  local repo_name=$(basename $repo_source .git)

  case $2 in
    vim)
      local local_repo="$VIM/bundle/$repo_name"
      ;;
    zsh)
      local local_repo="$ZSH/$repo_name"
      ;;
    *)
      echo "get_repo failed"
      exit 1
  esac

  git clone $repo_source $local_repo 2> /dev/null || git -C $local_repo pull
}

# vim-pathogen
curl -LSso $VIM/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

echo "VIM"
vim_plugins_repos=(
  https://github.com/tpope/vim-commentary.git
  https://github.com/tpope/vim-fugitive.git
  https://github.com/junegunn/fzf.vim.git
  https://github.com/junegunn/goyo.vim.git
  https://github.com/junegunn/limelight.vim.git
  https://github.com/mhinz/vim-signify.git
  https://github.com/romainl/vim-cool.git
)
for repo in ${vim_plugins_repos[@]}; do
  get_repo $repo vim
done

# vim colorschemes
curl -LSso $VIM/colors/photon.vim https://raw.githubusercontent.com/axvr/photon.vim/master/colors/photon.vim
curl -LSso $VIM/colors/nord.vim https://raw.githubusercontent.com/arcticicestudio/nord-vim/master/colors/nord.vim

echo "ZSH"
zsh_repos=(
  https://github.com/zsh-users/zsh-syntax-highlighting.git
  https://github.com/zsh-users/zsh-autosuggestions.git
  https://github.com/sindresorhus/pure.git
)
for repo in ${zsh_repos[@]}; do
  get_repo $repo zsh
done

ln -sf "$ZSH/pure/pure.zsh" "$ZSH/zfunctions/prompt_pure_setup"
ln -sf "$ZSH/pure/async.zsh" "$ZSH/zfunctions/async"

# symlink configs
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -sf "$DOTFILES_DIR/.aliases" $HOME
ln -sf "$DOTFILES_DIR/.gitconfig" $HOME
ln -sf "$DOTFILES_DIR/.gitignore_global" $HOME
ln -sf "$DOTFILES_DIR/.vimrc" $HOME
ln -sf "$DOTFILES_DIR/.zshrc" $HOME
ln -sf "$DOTFILES_DIR/.tmux.conf" $HOME
