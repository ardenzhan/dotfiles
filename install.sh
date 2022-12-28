#!/bin/bash

# create parent folders
VIM="$HOME/.vim"
ZSH="$HOME/.zsh"

get_repo() {
  local repo_source=$1
  local repo_name=$(basename $repo_source .git)

  case $2 in
    vim)
      local local_repo="$VIM/pack/plugins/start/$repo_name"
      ;;
    vimcolors)
      local local_repo="$VIM/pack/colors/opt/$repo_name"
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

echo "VIM PLUGINS"
vim_plugins_repos=(
  https://github.com/tpope/vim-commentary.git
  https://github.com/tpope/vim-fugitive.git
  https://github.com/tpope/vim-rhubarb.git
  https://github.com/junegunn/fzf.vim.git
  https://github.com/junegunn/goyo.vim.git
  https://github.com/junegunn/limelight.vim.git
  https://github.com/mhinz/vim-signify.git
  https://github.com/romainl/vim-cool.git
)
for repo in ${vim_plugins_repos[@]}; do
  get_repo $repo vim
done

echo "VIM COLORSCHEMES"
vim_colors_repos=(
  https://github.com/arcticicestudio/nord-vim.git
  https://github.com/axvr/photon.vim.git
  https://gitlab.com/yorickpeterse/vim-paper.git
)
for repo in ${vim_colors_repos[@]}; do
  get_repo $repo vimcolors
done

echo "ZSH"
zsh_repos=(
  https://github.com/zsh-users/zsh-syntax-highlighting.git
  https://github.com/zsh-users/zsh-autosuggestions.git
  https://github.com/sindresorhus/pure.git
)
for repo in ${zsh_repos[@]}; do
  get_repo $repo zsh
done

# symlink configs
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -sf "$DOTFILES_DIR/aliases" $HOME/.aliases
ln -sf "$DOTFILES_DIR/.gitconfig" $HOME
ln -sf "$DOTFILES_DIR/.gitignore_global" $HOME
ln -sf "$DOTFILES_DIR/.vimrc" $HOME
ln -sf "$DOTFILES_DIR/zshrc" $HOME/.zshrc
ln -sf "$DOTFILES_DIR/zprofile" $HOME/.zprofile
# ln -sf "$DOTFILES_DIR/.tmux.conf" $HOME
