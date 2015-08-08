set nocompatible

let mapleader=","
let maplocalleader=","
let g:mapleader=","
let g:Powerline_symbols='unicode'
let g:airline_powerline_fonts=1
let g:localvimrc_ask=0
let g:indentLine_char='|'
let g:indentLine_color_term=0
let g:indentLine_noConcealCursor=""
let NERDTreeShowHidden=1

filetype plugin indent on
syntax enable

set t_Co=256
set noerrorbells
set showmatch
set expandtab
set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set number
set nowrap
set ruler
set hls
set incsearch
set laststatus=2
set synmaxcol=480
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list " show trailing whiteshace and tabs
set showmatch
set autoindent
set copyindent
set wildignore=*.swp,*.bak,*.pyc
set pastetoggle=<F2>
set splitbelow
set splitright

iabbrev rpry require 'pry'; binding.pry
iabbrev ipdb import pdb; pdb.set_trace()

nmap <silent> <leader>c :tabnew<CR>
nmap <silent> <leader>t :tabnext<CR>
nmap <silent> <leader>p :tabprev<CR>
nmap <silent> <leader>/ :nohlsearch<CR>

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>


set nocompatible
" set columns=80
set wrapmargin=8
syntax on
set ruler
set bs=2

set tabstop=3
set softtabstop=4
set expandtab
set cursorline

filetype indent on " looks for ~/.vim/indent

set showmatch

set incsearch
set hlsearch


execute pathogen#infect()



" g:solarized_degrade="0|1"
let g:solarized_degrade="0"
" contrast "normal|high|low"
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
let g:solarized_termcolors="256"

set background=light
colorscheme solarized

