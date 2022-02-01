set term=xterm-256color

syntax on
colorscheme industry
" transparent background
"hi Normal guibg=NONE ctermbg=NONE
" mouse support
" set mouse=a

" show line numbers
set number
set relativenumber

set hlsearch
"set ic

" enable enter in escape mode
map <Enter> o<ESC>

" tab = 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" highlight cursor line
set nocursorline
" cursor shape
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[0 q"

" vim backup
set backupdir=~/.vim/vimtmp//,.
set directory=~/.vim/vimtmp//,.

" copy to clipboard
set clipboard=unnamedplus

""""""""""""""""""""
" KEY MAPPINGS
""""""""""""""""""""
execute "set <M-f>=\ef"
execute "set <M-i>=\ei"

execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-l>=\el"
execute "set <M-;>=\e;"

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" <Ctrl-s> in insert mode = :w in normal mode (SAVING THE FILE)
inoremap <C-s> <C-O>:w<CR>

" <Ctrl-z> in insert mode = u in normal mode (UNDO)
inoremap <C-z> <C-O>u

" <Ctrl-Alt-v> = <Ctrl-v>
nnoremap <C-M-v> = <C-v>

" <Alt-f> to switch modes
inoremap <M-f> <ESC>
nnoremap <M-f> a
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

" ' -> ;
nnoremap ' ;

" Alt + jkl; insted of arrows in insert mode
inoremap <M-j> <C-O>h

inoremap <M-k> <C-O>k

inoremap <M-l> <C-O>j
inoremap <M-;> <C-O>l

" ctrl + j; to jump words
noremap <C-j> b
noremap <C-;> w

" move cursor between split windows
" left
nnoremap <C-w>j <C-w>h
" up
nnoremap <C-w>k <C-w>k
" down
nnoremap <C-w>l <C-w>j
" right
nnoremap <C-w>; <C-w>l


""""""""""""""""""""
" PLUGINS
""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

call plug#end()


" NERDTree
inoremap <C-T> <C-O>:NERDTreeToggle<CR>
nnoremap <C-T> :NERDTreeToggle<CR>

