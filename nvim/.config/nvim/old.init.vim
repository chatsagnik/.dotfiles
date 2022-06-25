" numbering
set number
set relativenumber
" indentation
set autoindent
set smartindent
" tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
" advanced settings
set mouse=a
set termguicolors
" syntax
syntax on

call plug#begin()

" Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'								" For Commenting gcc & gc
Plug 'vim-airline/vim-airline'							" Status bar
Plug 'vim-airline/vim-airline-themes'					" Use the deus theme
Plug 'preservim/nerdtree'								" Navigation sidebar
Plug 'ryanoasis/vim-devicons'							" Developer Icons
Plug 'jiangmiao/auto-pairs'								" Auto completion of parantheses, brackets, etc
Plug 'gko/vim-coloresque'								" Displaying colors of hexcodes and colors in terminal
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }		" Theme for Neovim

call plug#end()

" Setting the theme of neovim
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }
" Load the colorscheme
colorscheme tokyonight

" Setting the airline theme
let g:airline_theme = 'deus'

" Use Ctrl+b to toggle nerdtree
inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>
