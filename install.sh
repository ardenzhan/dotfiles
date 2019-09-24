#!/bin/bash

# create parent folders
VIM="$HOME/.vim"
ZSH="$HOME/.zsh"

mkdir -p $VIM/autoload \
         $VIM/bundle \
         $VIM/colors \
         $ZSH/.zfunctions

# vim-pathogen
curl -LSso $VIM/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
# vim plugins
git clone https://github.com/tpope/vim-commentary.git $VIM/bundle/vim-commentary
git clone https://github.com/junegunn/fzf.vim.git $VIM/bundle/fzf.vim
git clone https://github.com/mhinz/vim-signify.git $VIM/bundle/vim-signify
git clone https://github.com/romainl/vim-cool.git $VIM/bundle/vim-cool
# vim colorschemes
curl -LSso $VIM/colors/photon.vim https://raw.githubusercontent.com/axvr/photon.vim/master/colors/photon.vim
curl -LSso $VIM/colors/nord.vim https://raw.githubusercontent.com/arcticicestudio/nord-vim/master/colors/nord.vim

# zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH/zsh-autosuggestions
# zsh theme
git clone https://github.com/sindresorhus/pure.git $ZSH/pure
ln -sf "$ZSH/pure/pure.zsh" "$ZSH/.zfunctions/prompt_pure_setup"
ln -sf "$ZSH/pure/async.zsh" "$ZSH/.zfunctions/async"

# symlink configs
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -sf "$DOTFILES_DIR/.aliases" $HOME
ln -sf "$DOTFILES_DIR/.gitconfig" $HOME
ln -sf "$DOTFILES_DIR/.gitignore_global" $HOME
ln -sf "$DOTFILES_DIR/.vimrc" $HOME
ln -sf "$DOTFILES_DIR/.zshrc" $HOME
ln -sf "$DOTFILES_DIR/.tmux.conf" $HOME
ln -sf "$DOTFILES_DIR/.mongorc.js" $HOME
