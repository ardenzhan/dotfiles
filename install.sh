#!/bin/bash

# create parent folders
VIM="$HOME/.vim"
ZSH="$HOME/.zsh"

mkdir -p $VIM/autoload \
         $VIM/bundle \
         $VIM/colors \
         $ZSH/zfunctions

get_repo() {
  git clone $1 $2 2> /dev/null || git -C $2 pull
}

# vim-pathogen
curl -LSso $VIM/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
# vim plugins
get_repo https://github.com/tpope/vim-commentary.git $VIM/bundle/vim-commentary
get_repo https://github.com/tpope/vim-fugitive.git $VIM/bundle/vim-fugitive
get_repo https://github.com/junegunn/fzf.vim.git $VIM/bundle/fzf.vim
get_repo https://github.com/mhinz/vim-signify.git $VIM/bundle/vim-signify
get_repo https://github.com/romainl/vim-cool.git $VIM/bundle/vim-cool
# vim colorschemes
curl -LSso $VIM/colors/photon.vim https://raw.githubusercontent.com/axvr/photon.vim/master/colors/photon.vim
curl -LSso $VIM/colors/nord.vim https://raw.githubusercontent.com/arcticicestudio/nord-vim/master/colors/nord.vim

# zsh plugins
get_repo https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/zsh-syntax-highlighting
get_repo https://github.com/zsh-users/zsh-autosuggestions.git $ZSH/zsh-autosuggestions
# zsh theme
get_repo https://github.com/sindresorhus/pure.git $ZSH/pure
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
