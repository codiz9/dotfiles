set nocompatible            " be iMproved, required
filetype off                " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" status/tabline for vim
Plugin 'vim-airline/vim-airline'
" NERDTree
Plugin 'scrooloose/nerdtree'
" Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
" theme
"Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'

" All Plugins must be added before the following line
call vundle#end()           " required
filetype plugin indent on   " required

" Colors
let python_highlight_all=1
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Spaces & Tabs
set tabstop=4               " number of visual spaces per TAB
set softtabstop=4           " number of spaces in tab when editing
set shiftwidth=4
set autoindent
set smartindent
set fileformat=unix
set backspace=2             " make backspace work like most other apps

" FileType specific changes
" Python
autocmd FileType python setlocal expandtab

" Leader Shortcuts
let mapleader=","

" UI Config
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set cursorcolumn        " highlight current column
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlighting matching parenthesis
map <leader>tt <ESC>:NERDTreeToggle<CR>
let g:airline_powerline_fonts=1

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search lighlight
nnoremap <leader><space> :nohlsearch<CR>

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
