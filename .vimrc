set nocompatible              " be iMproved, required
filetype off                  " required

nnoremap : ;
nnoremap ; :
imap jj <ESC>
set cindent
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set diffopt=vertical
set diffopt+=iwhite
" set nowrap
au FileType gitcommit setlocal tw=72

syntax on
