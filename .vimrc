call plug#begin('~/.vim/plugged')
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/vimshell', { 'rev' : '3787e5' }
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
"Plug 'bling/vim-airline'
"Plug 'edkolev/tmuxline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'trusktr/seti.vim'
Plug 'vim-scripts/twilight'
Plug 'jaywilliams/vim-vwilight'
Plug 'chriskempson/base16-vim'
Plug 'rust-lang/rust.vim'
Plug 'hdima/python-syntax'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
call plug#end()

syntax on
set timeoutlen=1000 ttimeoutlen=0
set number
"set noshowmode
set shell=bash
set cursorline
set nobackup
set colorcolumn=101

colorscheme vwilight

set preserveindent
set showmatch
set expandtab
set autoindent

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

highlight clear SignColumn
set ignorecase
set incsearch
set showcmd

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc

filetype plugin indent on

let python_highlight_all = 1
let g:jedi#use_splits_not_buffers = "top"
let g:jsx_ext_required = 0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
autocmd BufRead,BufNewFile *.es6 setfiletype javascript

let mapleader = ','
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>t :CtrlP<CR>
