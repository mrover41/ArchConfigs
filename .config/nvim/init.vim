set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set number
set relativenumber

call plug#begin()

Plug 'folke/tokyonight.nvim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ryanoasis/vim-devicons.git'
Plug 'https://github.com/neoclide/coc.nvim.git'

call plug#end()

set termguicolors
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

nnoremap <M-`> :NERDTreeToggle<CR>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

nnoremap <A-w> <C-w>
nnoremap <A-d> <C-d>
nnoremap <A-u> <C-u>
