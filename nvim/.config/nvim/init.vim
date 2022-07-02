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
set cursorline
syntax on

call plug#begin()
	Plug 'akinsho/bufferline.nvim' " Buffer Line
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'gko/vim-coloresque' " Displaying colors of hexcodes and colors in terminal
	Plug 'sheerun/vim-polyglot'
	Plug 'jiangmiao/auto-pairs' " Auto completion of parantheses, brackets, etc
	Plug 'lewis6991/gitsigns.nvim' " Git marker Signs
	Plug 'morhetz/gruvbox'
	Plug 'preservim/nerdtree' " Navigation sidebar: use Ctrl+B to open and close
	Plug 'ryanoasis/vim-devicons' " Developer Icons
	Plug 'thaerkh/vim-indentguides' " Indentation guidelines: use Ctrl+M to open and close
	Plug 'tpope/vim-commentary' " For Commenting gcc & gc
	Plug 'vim-airline/vim-airline' " Status bar
	Plug 'vim-airline/vim-airline-themes' " Use the deus theme

call plug#end()

lua require('user')

" Load the colorschemes
" --------------------
colorscheme dracula
let g:airline_theme = 'deus'
let g:airline_powerline_fonts = 1

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
" ------------------------
" ------------------------
" When using :!, % will be subsituted by the name of the currently opened file
" F4 will do a debug-mode build for C.
" F5 will do a normal build for C with math linking. 

nnoremap <F4> <Esc>:!gcc -g -lm -Wall -o output_debug %
nnoremap <F5> <Esc>:!gcc -lm -Wall -o output %

