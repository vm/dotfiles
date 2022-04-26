call plug#begin('~/.config./nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'tpope/vim-commentary'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'VonHeikemen/lsp-zero.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'nvim-lua/plenary.nvim'

Plug 'hdima/python-syntax'
Plug 'rust-lang/rust.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'maxmellon/vim-jsx-pretty'

Plug 'catppuccin/nvim', {'as': 'catppuccin'}
call plug#end()

colorscheme catppuccin

set number
set hidden
set nobackup
set timeoutlen=1000 ttimeoutlen=-1
set shell=bash
set backspace=2
set clipboard=unnamed

set preserveindent
set expandtab
set autoindent
set shiftwidth=2
filetype plugin indent on

set smartcase
set ignorecase
set incsearch
set wildmode=longest,list,full
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
set showmatch

set list
set listchars=tab:▸\ ,trail:▫

let python_highlight_all=1
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

let mapleader=','

nnoremap <leader>t <cmd>Telescope find_files<cr>

lua << EOF
local telescope = require('telescope')
telescope.setup{
  defaults = {
    file_ignore_patterns = {
      "node_modules" 
    }
  }
}
telescope.load_extension('fzf')

require("trouble").setup {}

local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()


local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.code_actions.eslint,
        null_ls.builtins.formatting.prettier
    },
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]])
        end
    end,
})
EOF

set completeopt=menu,menuone,noselect
nnoremap <leader>e <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>r <cmd>TroubleToggle lsp_references<cr>
