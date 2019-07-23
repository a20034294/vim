set encoding=utf-8

syntax on
set ai
set shiftwidth=4
set tabstop=4
set expandtab
set smartindent

set ruler
set backspace=2
set ic
set hlsearch
set history=500
set number
set incsearch
set mouse=a
set clipboard=unnamedplus
set pastetoggle=<C-p>

inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap {<CR> {<CR>}<Esc>ko

inoremap '<BS> <ESC>a
inoremap "<BS> <ESC>a
inoremap (<BS> <ESC>a
inoremap [<BS> <ESC>a
inoremap {<BS> <ESC>a

inoremap '' ''
inoremap "" ""
inoremap () ()
inoremap [] []
inoremap {} {}

nnoremap <C-n> :NERDTreeToggle<CR>

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required
