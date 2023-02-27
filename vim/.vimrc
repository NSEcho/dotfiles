set number
set wrap
syntax on
set hlsearch incsearch
colorscheme desert
set tabstop=4
set shiftwidth=4
set expandtab
set hidden
set path+=$PWD/**
set nocompatible
filetype plugin on

" Set leaders
let mapleader = ","
let maplocalleader = "\\"

" Mappings ----------------------------------{{{
noremap <leader>- ddp
" Delete line in insert mode
inoremap <leader>d <esc>ddi
" Convert current word to uppercase in insert mode
inoremap <leader>u <esc>viwU<esc>i
" Convert line to heading one
inoremap <leader>m1 <esc>0i# <esc>$i
" Convert current mode to uppercase in normal mode
nnoremap <leader>u viwU
" Open vimrc in split mode
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" Source current file
nnoremap <leader>svc :source %<cr>
" Quote string
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" Remove previous match
nnoremap <leader>/ :let @/ = ""<cr>
" Mark trailing newlines
nnoremap <leader>w :match Error /\v\s$/<cr>
" Remove match
nnoremap <leader>W :match<cr>
" Change windows
nnoremap <leader>wh <c-w>h
nnoremap <leader>wl <c-w>l
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k
" Map jk to escape
inoremap jk <esc>
" Unmap esc
inoremap <esc> <nop>
" Unmap arrows
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <right> <nop>
nnoremap <leader>n :NERDTreeFocus<cr>
nnoremap <leader><c-n> :NERDTree<cr>
nnoremap <leader><c-t> :NERDTreeToggle<cr>
nnoremap <leader><c-f> :NERDTreeFind<cr>
" }}}


" Vimscript file settings ----------------------------{{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Call plugins
call plug#begin()

Plug 'https://github.com/ayu-theme/ayu-vim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'fatih/vim-go'
Plug 'mattn/gist-vim'
Plug 'https://github.com/preservim/nerdtree'
Plug 'khaveesh/vim-fish-syntax'

call plug#end()


set termguicolors
colorscheme ayu

" Skeletons
autocmd BufNewFile *.sh 0r ~/vimskeletons/bash.sh
autocmd BufNewFile root.go 0r ~/vimskeletons/root.go
autocmd BufNewFile version.txt 0r ~/vimskeletons/version.txt
autocmd BufNewFile README.md 0r ~/vimskeletons/README.md
autocmd BufNewFile FridaGadget.config 0r ~/vimskeletons/FridaGadget.config
