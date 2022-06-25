set number
set relativenumber
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set mouse=a
set termguicolors
set scrolloff=15
set sidescrolloff=8
" set wrap=true
" set cursorcolumn
set cursorline
syntax on

call plug#begin()

	Plug 'tpope/vim-commentary' " For Commenting gcc & gc
	Plug 'vim-airline/vim-airline' " Status bar
	Plug 'vim-airline/vim-airline-themes' " Use the deus theme
	Plug 'preservim/nerdtree' " Navigation sidebar: use Ctrl+B to open and close
	Plug 'ryanoasis/vim-devicons' " Developer Icons
	Plug 'jiangmiao/auto-pairs' " Auto completion of parantheses, brackets, etc
	Plug 'gko/vim-coloresque' " Displaying colors of hexcodes and colors in terminal
	Plug 'thaerkh/vim-indentguides' " Indentation guidelines: use Ctrl+M to open and close
	Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " Theme for Neovim
	Plug 'akinsho/bufferline.nvim' " Buffer Line
	Plug 'lewis6991/gitsigns.nvim' " Git marker Signs

call plug#end()

lua require('user')

" Setting the theme of neovim
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
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

inoremap <c-m> <Esc>:IndentGuidesToggle<cr>
nnoremap <c-m> <Esc>:IndentGuidesToggle<cr>

" Cycle through buffers using next and previous
nnoremap <s-l> <Esc>:BufferLineCycleNext<cr>
nnoremap <s-r> <Esc>:BufferLineCyclePrev<cr>

let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'

" Build C program
" When using :!, % will be subsituted by the name of the currently opened file
"
" F4 will do a debug-mode build for C.
" F5 will do a normal build for C with math linking. 
" F6 will do a normal build for C++.

nnoremap <F4> <Esc>:!gcc -g -lm -Wall output_debug %
nnoremap <F5> <Esc>:!gcc -o -lm -Wall output %

