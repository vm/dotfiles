call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'

Plug 'elixir-lang/vim-elixir'
Plug 'hdima/python-syntax'
Plug 'kchmck/vim-coffee-script'
Plug 'keith/swift.vim'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'rust-lang/rust.vim'

Plug 'jaywilliams/vim-vwilight'
Plug 'altercation/vim-colors-solarized'
call plug#end()

syntax on
set timeoutlen=1000 ttimeoutlen=-1
set number
set shell=bash
set cursorline
set nobackup
set colorcolumn=80

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

let python_highlight_all=1
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git'
let g:deoplete#enable_at_startup=1

function! <SID>StripTrailingWhitespaces()
    let l=line(".")
    let c=col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

let mapleader=','
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>t :CtrlP<CR>
