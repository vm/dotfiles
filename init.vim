call plug#begin('~/.config./nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim', { 'do': 'UpdateRemotePlugins' }
Plug 'tpope/vim-commentary'
Plug 'neomake/neomake'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'hdima/python-syntax'
Plug 'wlangstroth/vim-racket'
Plug 'rust-lang/rust.vim'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'mxw/vim-jsx'
Plug 'elixir-lang/vim-elixir'
Plug 'kchmck/vim-coffee-script'
Plug 'wavded/vim-stylus'

Plug 'morhetz/gruvbox'
call plug#end()

syntax enable

set termguicolors
let g:gruvbox_italic=1
colorscheme gruvbox
set background=light

highlight htmlArg cterm=italic
highlight Comment cterm=italic

set number
set showcmd
set colorcolumn=100

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

autocmd! BufWritePost * Neomake

let g:jsx_ext_required = 0
let python_highlight_all=1
call deoplete#enable()

let mapleader=','
nnoremap <leader>t :GitFiles<cr>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
