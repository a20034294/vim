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
