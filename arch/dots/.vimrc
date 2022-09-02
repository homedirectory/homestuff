"set term=xterm-256color

set backspace=indent,eol,start

syntax enable

"set background=dark
colorscheme jjnkn

" no delay escaping visual mode
set timeoutlen=3000 ttimeoutlen=100

let mapleader=" "
map <C-x> <leader>

set number
set relativenumber
set nocursorline "smoother without it

set incsearch
set hlsearch
set ignorecase
set smartcase

" enable mouse for visual and normal modes
set mouse=vn

" enable enter in escape mode
"map <Enter> o<ESC>

" tab = 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

filetype plugin indent on

" don't copy to clipboard by default
set clipboard=
" Ctrl-c copy from register to clipboard
nnoremap <C-c> :let @+=@" <CR>

" Disable automatic comment insertion for single-line comments
" https://vim.fandom.com/wiki/Disable_automatic_comment_insertion
setlocal comments-=://
setlocal comments+=f://

"""""""""""""""""""
""" paredit
""""""""""""""""""
let g:paredit_smartjump=1
let g:paredit_electric_return=0

"""""""""""""""""""
""" statusline
""""""""""""""""""
" always show
set laststatus=2
set statusline=\ %f%m%=%l/%L\ :\ %c\ 


"""""""""""""""""""""""""
" KEY MAPPINGS
""""""""""""""""""""""""

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" toggle search highlighting
"nnoremap <silent> h :set hls!<CR>

" j = left
" k = up
" l = down
" ; = right
noremap ; l
noremap l j
noremap k k
noremap j h

" ' -> ;
noremap ' ;

" move cursor between split windows
" left
nnoremap <C-w>j <C-w>h
" up
nnoremap <C-w>k <C-w>k
" down
nnoremap <C-w>l <C-w>j
" right
nnoremap <C-w>; <C-w>l

" switch between tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" yank inside braces { }
nnoremap yir yi{
" q = "
nnoremap yiq yi"
nnoremap yaq ya"
nnoremap caq ca"
nnoremap ciq ci"
nnoremap diq di"
nnoremap daq da"
nnoremap viq vi"
nnoremap vaq va"

"""""""""""""""""""""""""
" PLUGINS (vim-plug)
"""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

"Plug 'preservim/nerdtree'
"Plug 'rhysd/reply.vim', { 'on': ['Repl', 'ReplAuto'] }
Plug '~/.vim/plugged/vim-racket'

call plug#end()



"" NERDTree
"inoremap <C-T> <C-O>:NERDTreeToggle<CR>
"nnoremap <C-T> :NERDTreeToggle<CR>


"""""""""""""""""""""""""
" C
"""""""""""""""""""""""""
set makeprg=gcc\ -o\ %<\ %


""""""""""""""""""""""""
" autocmd
"""""""""""""""""""""""
if has("autocmd")
    au BufRead,BufNewFile *.rkt setlocal filetype=racket
    au BufRead,BufNewFile *.xml setlocal tabstop=2 shiftwidth=2
    " vimdiff enable line wrap
    autocmd FilterWritePre * if &diff | setlocal wrap< | endif
endif

if &filetype ==# 'scheme'
    setlocal lisp
endif
