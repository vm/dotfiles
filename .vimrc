" plug
call plug#begin('~/.vim/plugged')
Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'digitaltoad/vim-jade'
Plug 'othree/yajs.vim'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/vimshell', { 'rev' : '3787e5' }
Plug 'edkolev/tmuxline.vim'
Plug 'wesgibbs/vim-irblack'
Plug 'whatyouhide/vim-gotham'
Plug 'w0ng/vim-hybrid'
Plug 'altercation/vim-colors-solarized'
Plug 'hdima/python-syntax'
Plug 'morhetz/gruvbox'
call plug#end()

syntax on
set nocompatible
set timeoutlen=1000 ttimeoutlen=0
set number
set noshowmode
set shell=bash
set cursorline
set nobackup
set colorcolumn=101

set preserveindent
set showmatch
set expandtab
set autoindent
set smartindent

set autoread
set backspace=2
set clipboard=unnamed
set directory-=.
set encoding=utf-8
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=3
set shiftwidth=2
set showcmd
set smartcase
set wildmenu
set wildmode=longest,list,full

set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:tmuxline_powerline_separators = 0

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc

colorscheme gruvbox
highlight clear SignColumn
set background=dark
set ignorecase
set incsearch
set showcmd

filetype plugin indent on

autocmd BufEnter * lcd %:p:h

let python_highlight_all = 1

autocmd BufRead,BufNewFile *.es6 setfiletype javascript

let mapleader = ','
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>g :GitGutterToggle<CR>
