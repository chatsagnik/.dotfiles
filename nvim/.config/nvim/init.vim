:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'EdenEast/nightfox.nvim', { 'tag': 'v1.0.0' }
Plug 'jiangmiao/auto-pairs'
Plug 'gko/vim-coloresque'

call plug#end()

colorscheme nightfox
