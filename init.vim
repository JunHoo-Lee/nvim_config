syntax on
let mapleader = " "

set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set numberwidth=4
set relativenumber
set signcolumn=number
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set nohlsearch
set ignorecase
set smartcase
set nowrap
set splitbelow
set splitright
set hidden
set scrolloff=8
set noshowmode
set updatetime=250 
set encoding=UTF-8
set mouse=a


" --- Plugins

call plug#begin('~/.config/nvim/plugged')
Plug 'sainnhe/gruvbox-material'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'                     " Buffers
Plug 'nvim-lualine/lualine.nvim'                   " Status line
Plug 'kyazdani42/nvim-tree.lua'                    " File explorer

" Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ray-x/lsp_signature.nvim'
" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
" Git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

call plug#end()

" require plugin configs
lua require('junhoo')
" --- Colors
set background=dark
set termguicolors
colorscheme gruvbox-material

" --- Remaps
" --- window moving (C-W == wincmd)
nnoremap <silent><leader>h :wincmd h<Cr>
nnoremap <silent><leader>j :wincmd j<Cr>
nnoremap <silent><leader>k :wincmd k<Cr>
nnoremap <silent><leader>l :wincmd l<Cr>
" --- split window
nnoremap <silent><leader>v :wincmd v<Cr>
nnoremap <silent><leader>s :wincmd s<Cr>
nnoremap <silent><leader>Q :wincmd q<Cr>
" --- Telescope find-files
nnoremap <silent><leader>f :Telescope find_files<Cr>
nnoremap <silent><leader>[ :BufferLineCyclePrev<Cr>
nnoremap <silent><leader>] :BufferLineCycleNext<Cr>
nnoremap <silent><leader>q :bdelete<Cr>
inoremap jk <Esc>
inoremap kj <Esc>
" Terminal mapping
tnoremap jk <C-\><C-n>
tnoremap kj <C-\><C-n>
tnoremap <Esc> <C-\><C-n>
