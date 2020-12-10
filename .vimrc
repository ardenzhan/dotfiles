filetype plugin indent on
syntax on

" Presentation
set list listchars=tab:→\ ,trail:･,precedes:«,extends:»
set expandtab tabstop=2 softtabstop=2 shiftwidth=2

set showcmd
set showmatch
set ruler
set incsearch hlsearch ignorecase smartcase

set backspace=indent,eol,start

" signify and vimdiff
hi DiffAdd    ctermfg=Green ctermbg=NONE
hi DiffDelete ctermfg=Red ctermbg=NONE
hi DiffChange ctermfg=DarkYellow ctermbg=NONE

" Autoread
set autoread

" fzf
set rtp+=~/.fzf
nmap <Space>b :Buffers<CR>
nmap <Space>f :Files<CR>
nnoremap <silent> <Space>s :Rg <C-R><C-W><CR>
nnoremap <silent> <Space>r :term %<CR>

" goyo
nmap <Space>g :Goyo<CR>

" limelight
nmap <Space>l :Limelight!!<CR>
let g:limelight_conceal_ctermfg = 8

" signify
let g:signify_vcs_list                = [ 'git' ]
let g:signify_sign_add                = '･'
let g:signify_sign_delete             = '･'
let g:signify_sign_delete_first_line  = '･'
let g:signify_sign_change             = '･'
let g:signify_sign_changedelete       = g:signify_sign_change
highlight SignColumn ctermbg=NONE cterm=NONE guibg=NONE gui=NONE

colorscheme nord
