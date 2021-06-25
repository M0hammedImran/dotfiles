syntax on

set guicursor=
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set encoding=utf-8
set termguicolors
set colorcolumn=80
highlight ColorCloumn ctermbg=0 guibg=lightgrey

set scrolloff=8
" set mouse=a

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

call plug#begin('~/.vim/plugged')

 Plug 'vim-utils/vim-man'
 Plug 'mbbill/undotree'
 Plug 'phanviet/vim-monokai-pro'
 Plug 'vim-airline/vim-airline'
 Plug 'flazz/vim-colorschemes'
 Plug 'ycm-core/YouCompleteMe'
 Plug 'preservim/nerdtree'
 Plug 'leafgarland/typescript-vim'
 Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()


if executable('rg')
    let g:rg_derive_root='true'
endif

let g:netrw_browser_split=2

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set cursorline

colorscheme dracula

let g:airline_theme='dracula'

set background=dark

let loaded_matchparen = 1
let mapleader=" "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <Leader>pv :wincmd v <bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
