let mapleader = ' '
let maplocalleader = ' '

set encoding=utf-8
set number
set autoindent
set nocompatible
syntax enable
filetype plugin indent on

set mouse=a
set showmatch

set rtp+=/usr/bin/fzf

" Plugins
call plug#begin()

Plug 'navarasu/onedark.nvim' " Color Theme
Plug 'dhruvasagar/vim-zoom' " C-w to zoom into split
Plug 'junegunn/fzf' " Fuzzy finding
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround' " add surround functionality
Plug 'tyru/caw.vim' " Commenting

call plug#end()

" Colorscheme
colorscheme onedark

function! OpenFile(filename)
    " Check if there are any unsaved changes in the current buffer
    if &modified 
        " Open the specified file in a new tab
        execute 'tabnew' fnameescape(a:filename)
    else
        " Replace the content of the current buffer with the specified file
        execute 'edit' fnameescape(a:filename)
    endif
endfunction


" Custom commands
command Vimrc  call OpenFile('~/.config/nvim/init.vim')
command Zshrc  call OpenFile('~/.config/zsh/.zshrc')
command TmuxConf  call OpenFile('~/.config/tmux/tmux.conf')
command Reload so ~/.config/nvim/init.vim

set ignorecase
set smartcase
set path+=**

" Remaps

nnoremap <Leader>f :Files <CR>
nnoremap <Leader>F :Files ~<CR>
nnoremap <Leader>R :Reload <CR>
nnoremap <Leader>w :w <CR>
nnoremap <Leader>q :q <CR>
nnoremap <Leader>t :belowright split term://zsh <CR>
nnoremap <leader>n :nohlsearch<CR>

autocmd TermOpen * startinsert
autocmd TermClose * execute 'bdelete! ' . expand('<abuf>')

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nnoremap <leader>h :split 
nnoremap <leader>v :vsplit 


set tabstop=4
set shiftwidth=4
set expandtab
set noswapfile
set relativenumber
set termguicolors
set cursorline
set splitbelow
set splitright

" Folding
set foldmethod=indent
set foldlevel=99
nnoremap <leader>aa za

autocmd filetype python nnoremap <F4> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r')<CR>
autocmd filetype python nnoremap <F5> :w <bar> exec '!python '.shellescape('%')<CR>
" autocmd filetype c nnoremap <F5> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype c nnoremap <F5> :w <bar> exec \"'!gcc '.shellescape('%').' -o '.shellescape('%:r').'\" \| :term ./'%:r' \| startinsert<CR>

autocmd filetype cpp nnoremap <F5> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
