execute pathogen#infect()
filetype plugin indent on
syntax on

" Presentation
set list listchars=tab:→\ ,trail:･,precedes:«,extends:»
set expandtab tabstop=2 softtabstop=2 shiftwidth=2

set number
set relativenumber
set numberwidth=3
set showcmd
set showmatch
set ruler
set incsearch hlsearch ignorecase smartcase

set backspace=indent,eol,start

" Highlights
hi SpecialKey ctermfg=DarkGray
hi LineNr     ctermfg=DarkGray
hi Search     ctermbg=Blue
hi WildMenu   ctermbg=Blue
" signify and vimdiff
hi DiffAdd    ctermfg=Green ctermbg=NONE
hi DiffDelete ctermfg=Red ctermbg=NONE
hi DiffChange ctermfg=DarkYellow ctermbg=NONE

" Tab Completion
set wildmenu
set wildmode=list:longest,full

" Autoread
set autoread

" fzf
set rtp+=/usr/local/opt/fzf
nmap <Leader>b :Buffers<CR>
nmap <Leader>f :Files<CR>

" signify
let g:signify_vcs_list                = [ 'git' ]
let g:signify_sign_add                = '•'
let g:signify_sign_delete             = '•'
let g:signify_sign_delete_first_line  = '•'
let g:signify_sign_change             = '•'
let g:signify_sign_changedelete       = g:signify_sign_change
highlight SignColumn ctermbg=NONE cterm=NONE guibg=NONE gui=NONE

" auto expand brackets
inoremap (; (<CR>);<C-c>O
inoremap (, (<CR>),<C-c>O
inoremap {; {<CR>};<C-c>O
inoremap {, {<CR>},<C-c>O
inoremap [; [<CR>];<C-c>O
inoremap [, [<CR>],<C-c>O

colorscheme photon
