"Uncomment when deriving from old vim
"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc

syntax on

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()

set noerrorbells
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set cmdheight=1
set updatetime=50
set laststatus=2

set wildmenu
set wildmode=full
set ignorecase
set smartcase

set background=dark

set omnifunc=syntaxcomplete#Complete
set complete=k,.

set nu

syntax enable

" For Swedish keyboard layout
nnoremap å <C-]>
nnoremap ä @
nnoremap , @@

nnoremap <C-S> :wa<CR>

nnoremap <F5> "=strftime("%Y-%m-%d %H:%M")<CR>po
inoremap <F5> <C-R>=strftime("%Y-%m-%d %H:%M")<CR>))

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

inoremap { {}<left>
inoremap {{ {
inoremap {} {}
inoremap [ []<left>
inoremap [[ [
inoremap [] []
inoremap ( ()<left>
inoremap (( (
inoremap () ()

tnoremap <Esc> <C-\><C-n>

source $HOME/.config/nvim/themes/gruvbox.vim
