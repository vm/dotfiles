" plug
call plug#begin('~/.vim/plugged')
Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'digitaltoad/vim-jade'
Plug 'jelera/vim-javascript-syntax'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'Valloric/YouCompleteMe'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/vimshell', { 'rev' : '3787e5' }
Plug 'edkolev/tmuxline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'hdima/python-syntax'
Plug 'Pjiangmiao/auto-pairs'
call plug#end()

set nocompatible
set timeoutlen=1000 ttimeoutlen=0
syntax on
set number
set noshowmode
set shell=bash
set cursorline
set nobackup
set colorcolumn=101

" indent
set preserveindent
set showmatch
set expandtab
set autoindent
set smartindent

" square maximum awesome
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

" airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:tmuxline_powerline_separators = 0

" crtlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc

" colors
"set t_Co=256
colorscheme solarized
highlight clear SignColumn
set background=light

" search
set ignorecase
set incsearch
set showcmd

filetype plugin indent on

" autocommands
autocmd BufEnter * lcd %:p:h

" python
let python_highlight_all = 1

" js
autocmd BufRead,BufNewFile *.es6 setfiletype javascript


" mappings
let mapleader = ','
nnoremap <leader>a :Ag<space>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>g :GitGutterToggle<CR>
