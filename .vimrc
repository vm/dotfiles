" Plug
call plug#begin('~/.vim/plugged')
Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'xolox/vim-misc'
Plug 'jelera/vim-javascript-syntax'
"Plug 'xolox/vim-easytags'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'wlangstroth/vim-racket'
"Plug 'klen/python-mode'
Plug 'morhetz/gruvbox'
Plug 'Valloric/YouCompleteMe'
Plug 'chriskempson/base16-vim'
Plug 'wesgibbs/vim-irblack'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'Shougo/vimshell', { 'rev' : '3787e5' }
Plug 'edkolev/tmuxline.vim'
Plug 'trusktr/seti.vim'
Plug 'w0ng/vim-hybrid'
Plug 'whatyouhide/vim-gotham'
"Plug 'scrooloose/syntastic'
"Plug 'davidhalter/jedi-vim'
"Plug 'jeffkreeftmeijer/vim-numbertoggle'
call plug#end()

set nocompatible
set timeoutlen=1000 ttimeoutlen=0
syntax on
set number
set ruler
set noshowmode
set shell=bash
set cursorline
set nobackup
set colorcolumn=101

" indent
set autoindent
set shiftround
set preserveindent
set shiftwidth=4
set tabstop=4
set expandtab
set showmatch

" square maximum awesome
set autoread
set backspace=2
set clipboard=unnamed
set directory-=.
set encoding=utf-8
set expandtab
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
"let g:airline#extensions#tabline#enabled = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" crtlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" colors
" set t_Co=256
let g:hybrid_use_Xresources = 1
colorscheme hybrid
highlight clear SignColumn " fixes solarized column color
set background=dark
let base16colorspace=256

" search
set ignorecase
set incsearch
set showcmd

filetype plugin indent on

" replace grep with ag
if executable('ag')
    set grepprg=ag
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" NERDTree
nmap \e :NERDTreeToggle<CR>

" AutoCommands
autocmd BufEnter * lcd %:p:h

" python
let python_highlight_all = 1

" js
autocmd BufRead,BufNewFile *.es6 setfiletype javascript
