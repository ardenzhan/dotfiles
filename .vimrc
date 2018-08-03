execute pathogen#infect()
filetype plugin indent on
syntax on

" Presentation
set list listchars=tab:→\ ,trail:･,precedes:«,extends:»
set expandtab tabstop=2 softtabstop=2 shiftwidth=2

set number
set numberwidth=3
set showcmd
set showmatch
set ruler
set incsearch hlsearch ignorecase smartcase

" Highlights
hi SpecialKey ctermfg=DarkGray
hi LineNr ctermfg=DarkGray

" Tab Completion
set wildmenu
set wildmode=list:longest,full

" Autoread
set autoread
