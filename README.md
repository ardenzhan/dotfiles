# dotfiles

## zshrc
http://zsh.sourceforge.net/Doc/Release/Completion-System.html

`compinit -d ~/.zsh/.zshrc` without -C option to check if there are new functions for completion files

## nodenv
Sets up shims path

`nodenv rehash` after installing new versions of Node or installing npm packages that provide executable binaries

## rbenv
Sets up shims path

`rbenv rehash` after installing new versions of Ruby or installing gems that provide commands

## mongo
homebrew stores data folder (usually /db/data) in `/usr/local/var/mongodb`.
the bins are at `/usr/local/opt/`.
`brew link mongodb@4.0` or whatever version to have symlinks / path.
`mongod4` or `mongod34` to load up mongod instances after linking

## test speed
`time zsh -i -c exit`

## todo
 - hook for rbenv
 - modularize
 - tmux scripts for dev environments
