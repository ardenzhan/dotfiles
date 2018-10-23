# dotfiles

## nvm
Lazy loads nvm if .nvmrc exists. Otherwise, `nvm use default`

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
