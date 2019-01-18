#!/bin/bash

# create parent folders
VIM="$HOME/.vim"
ZSH="$HOME/.zsh"

mkdir -p $VIM/autoload \
         $VIM/bundle \
         $ZSH/zfunctions

# vim-pathogen
curl -LSso $VIM/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
# vim plugins
git clone https://github.com/tpope/vim-commentary.git $VIM/bundle/vim-commentary
git clone https://github.com/junegunn/fzf.vim.git $VIM/bundle/fzf.vim
git clone https://github.com/mhinz/vim-signify.git $VIM/bundle/vim-signify

# zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH/zsh-autosuggestions
# zsh theme
git clone https://github.com/sindresorhus/pure.git $ZSH/pure
ln -sf "$ZSH/pure/pure.zsh" "$ZSH/zfunctions/prompt_pure_setup"
ln -sf "$ZSH/pure/async.zsh" "$ZSH/zfunctions/async"

# symlink configs
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -sf "$DOTFILES_DIR/.gitconfig" ~
ln -sf "$DOTFILES_DIR/.gitignore_global" ~
ln -sf "$DOTFILES_DIR/.vimrc" ~
ln -sf "$DOTFILES_DIR/.zshrc" ~
ln -sf "$DOTFILES_DIR/.tmux.conf" ~
ln -sf "$DOTFILES_DIR/.mongorc.js" ~
