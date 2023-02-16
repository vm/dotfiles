call plug#begin('~/.config./nvim/plugged')
Plug 'mhinz/vim-signify'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-sandwich'
Plug 'VonHeikemen/lsp-zero.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'j-hui/fidget.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'tpope/vim-fugitive'
" Plug 'takac/vim-hardtime'

Plug 'hdima/python-syntax'
Plug 'rust-lang/rust.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'peitalin/vim-jsx-typescript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'othree/yajs.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'iden3/vim-circom-syntax'

Plug 'catppuccin/nvim', {'as': 'catppuccin'}
call plug#end()

set termguicolors
let g:catppuccin_flavour = 'mocha'
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

nnoremap <leader>t :GFiles<cr>

lua << EOF
require('mason').setup()

-- LSP Support
local function lsp_keymaps(bufnr)
  local map = function(m, lhs, rhs)
    local opts = { remap = false, silent = true, buffer = bufnr }
    vim.keymap.set(m, lhs, rhs, opts)
  end

  -- LSP actions
  map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
  map('n', 'gd', '<cmd>Lspsaga lsp_finder<cr>')
  map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
  map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
  map('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
  map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
end

local lsp_formatting = function(bufnr)
    vim.lsp.buf.format()
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local function lsp_attach(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
          group = augroup,
          buffer = bufnr,
          callback = function()
              lsp_formatting(bufnr)
          end,
      })
  end
end

local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.set_preferences({
  set_lsp_keymaps = false
})

lsp.on_attach(lsp_attach)

lsp.ensure_installed({
  'tsserver',
  'eslint',
})

lsp.configure('lua', {
  settings = {
    diagnostics = {
      globals = { 'vim ' }
    }
  }
})

lsp.setup()

local null_ls = require('null-ls')
local null_opts = lsp.build_options('null-ls', {})
null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.code_actions.eslint,
        null_ls.builtins.formatting.eslint,
    },
    on_attach = null_opts.on_attach
})

vim.diagnostic.config({
  virtual_text = true,
  underline = true,
})

-- Turn on lsp status information
require('fidget').setup()
EOF

set completeopt=menu,menuone,noselect
nnoremap <leader>e <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>r <cmd>TroubleToggle lsp_references<cr>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)
let g:sandwich#recipes += [
      \   {
      \     'external': ['it', 'at'],
      \     'noremap' : 1,
      \     'filetype': ['html'],
      \     'input'   : ['t'],
      \   },
      \ ]

let g:hardtime_default_on = 1
