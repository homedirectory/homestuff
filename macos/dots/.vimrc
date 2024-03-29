set term=xterm-256color

set backspace=indent,eol,start

syntax enable

" no delay escaping visual mode
set timeoutlen=1000 ttimeoutlen=0

" ======= Vundle =======
"filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
"
"call vundle#end()
"filetype plugin indent on    " required

"colorscheme nord
"hi Normal guibg=#111111 ctermbg=black

" show line numbers
set number
set relativenumber
" smoother without it
set nocursorline

set incsearch
set hlsearch
set ic

" tab = 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" copy to clipboard
set clipboard=unnamedplus,unnamed

set backspace=indent,eol,start

"""""""""""""""""""""""""
" STATUSLINE
"""""""""""""""""""""""""

" always display the status line
set laststatus=2

set statusline=%f%m\ \ \ \ %l:%c


"""""""""""""""""""""""""
" KEY MAPPINGS
"""""""""""""""""""""""""

" macOS jump words with Ctrl
inoremap <C-Left> <C-O>b
inoremap <C-Right> <C-O>e

" enable enter in normal mode
map <Enter> o<ESC>

" redraw the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" toggle search highlighting
nnoremap <silent> h :set hls!<CR>

" <Ctrl-s> in insert mode = :w in normal mode (SAVING THE FILE)
inoremap <C-s> <C-O>:w<CR>

" <Ctrl-z> in insert mode = u in normal mode (UNDO)
inoremap <C-z> <C-O>u

execute "set <M-f>=\ef"
execute "set <M-i>=\ei"

" <Alt-i> to switch modes
inoremap <M-i> <ESC>
nnoremap <M-i> a

" j = left
" k = up
" l = down
" ; = right
noremap ; l
noremap l j
noremap k k
noremap j h

" K = half screen up
noremap K <C-U> 
" L = half screen down
noremap L <C-D>

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


"""""""""""""""""""""""""
" PLUGINS (vim-plug)
"""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'arcticicestudio/nord-vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'lervag/vimtex'
"Plug 'OmniSharp/omnisharp-vim'

call plug#end()

" NERDTree
inoremap <C-T> <C-O>:NERDTreeToggle<CR>
nnoremap <C-T> :NERDTreeToggle<CR>

" jsbeautifer
inoremap <C-F> :call JsBeautify()<CR>
nnoremap <C-F> :call JsBeautify()<CR>

" nord
colorscheme nord
hi Normal ctermbg=black

" vimtex
filetype plugin indent on
"syntax enable
let g:vimtex_view_method = 'general'

"let g:vimtex_view_general_viewer = 'okular'
"let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
let g:vimtex_compiler_method = 'latexmk'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = "\\"



