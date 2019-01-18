#!/bin/bash

# create parent folders
mkdir -p ~/.vim/autoload \
         ~/.vim/bundle \
         ~/.zsh/zfunctions

# vim-pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# vim plugins
git clone https://github.com/tpope/vim-commentary.git $HOME/.vim/bundle/vim-commentary
git clone https://github.com/junegunn/fzf.vim.git $HOME/.vim/bundle/fzf.vim
git clone https://github.com/mhinz/vim-signify.git $HOME/.vim/bundle/vim-signify

# zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.zsh/zsh-autosuggestions

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sf "$DOTFILES_DIR/.gitconfig" ~
ln -sf "$DOTFILES_DIR/.gitignore_global" ~
ln -sf "$DOTFILES_DIR/.vimrc" ~
ln -sf "$DOTFILES_DIR/.zshrc" ~
ln -sf "$DOTFILES_DIR/.tmux.conf" ~
ln -sf "$DOTFILES_DIR/.mongorc.js" ~

# pure
PURE_PATH="$DOTFILES_DIR/repos/pure"
git clone https://github.com/sindresorhus/pure.git $PURE_PATH
ln -s "$PURE_PATH/pure.zsh" "$HOME/.zsh/zfunctions/prompt_pure_setup"
ln -s "$PURE_PATH/async.zsh" "$HOME/.zsh/zfunctions/async"
