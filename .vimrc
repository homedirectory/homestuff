syntax on
colorscheme industry

" show line numbers
set number

set hlsearch
set ic

" enable enter in escape mode
map <Enter> o<ESC>

" tab = 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

set rtp+=$HOME/.local/lib/python3.8/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" <Ctrl-e> in insert mode = :w in normal mode (SAVING THE FILE)
inoremap <C-e> <C-O>:w<CR>
