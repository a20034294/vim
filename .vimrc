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
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif
set pastetoggle=<C-p>
set listchars=tab:>.,trail:~,extends:>,precedes:<
set list

set statusline=
set statusline+=%1*\[%n]                                   "buffernr
set statusline+=%1*\ %<%F\                                 "File+path
set statusline+=%3*
set statusline+=\ \ \ \ \ \ 
set statusline+=%4*%=
set statusline+=%5*\ %{''.(&fenc!=''?&fenc:&enc).''}\      "Encoding
set statusline+=%5*\ %{(&bomb?\",BOM\":\"\")}\             "Encoding2
set statusline+=%5*\ %{&ff}\                               "FileFormat (dos/unix..)
set statusline+=%6*
set statusline+=%7*\ line:%l/%L\ col:%3c\ (%3p%%)\         "Rownumber/total (%)
hi User1 ctermfg=3  ctermbg=0
hi User3 ctermfg=0
hi User4 ctermfg=0
hi User5            ctermbg=0
hi User6 ctermfg=4  ctermbg=0
hi User7 ctermfg=0  ctermbg=4
set laststatus=2

nnoremap <C-c> :set number!<CR>:set list!<CR>:GitGutterToggle<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
cnoremap w! :w !sudo tee %<CR>
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

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
