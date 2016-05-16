call plug#begin('~/.config./nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'

Plug 'hdima/python-syntax'
Plug 'rust-lang/rust.vim'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'kchmck/vim-coffee-script'
Plug 'wavded/vim-stylus'

Plug 'jaywilliams/vim-vwilight'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'chriskempson/base16-vim'
Plug 'whatyouhide/vim-gotham'
call plug#end()

syntax enable

colorscheme gotham
set background=dark

set number
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
set showmatch

set list
set listchars=tab:▸\ ,trail:▫

function! <SID>StripTrailingWhitespaces()
    let l=line('.')
    let c=col('.')
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

let python_highlight_all=1
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git'
let g:deoplete#enable_at_startup=1

let mapleader=','
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>t :CtrlP<CR>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
