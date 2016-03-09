call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'jeffkreeftmeijer/vim-numbertoggle'

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
colorscheme vwilight

set number
set cursorline
set showcmd
set colorcolumn=80

set nobackup
set timeoutlen=1000 ttimeoutlen=-1
set shell=bash
set backspace=2
set clipboard=unnamed
set directory-=.
set encoding=utf-8

set preserveindent
set showmatch
set expandtab
set autoindent
set shiftwidth=2
filetype plugin indent on

set smartcase
set ignorecase
set incsearch
set wildmenu
set wildmode=longest,list,full
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc

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
let g:NumberToggleTrigger="<leader>n"
