syntax on

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/NERDTree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'sheerun/vim-polyglot'
" Plug 'vim-airline/vim-airline' symbols do not show up in WSL2 
" Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'sindrets/diffview.nvim'
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
set title

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

let mapleader = " "

nnoremap <C-S> :wa<CR>

nnoremap <F5> "=strftime("%Y-%m-%d %H:%M")<CR>po
inoremap <F5> <C-R>=strftime("%Y-%m-%d %H:%M")<CR>))

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

tnoremap <Esc> <C-\><C-n>

source $HOME/.config/nvim/themes/gruvbox.vim
