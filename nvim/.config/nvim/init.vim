" OLAS VIMRC

" SETTING SYSTEM VARIABLES
syntax enable
set incsearch
set ignorecase
set smartcase
set showmatch
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
set cmdheight=1
set updatetime=50
set laststatus=2
set title
set clipboard=unnamedplus
set wildmenu
set wildmode=full
set background=dark
set omnifunc=syntaxcomplete#Complete
set complete=k,.
set textwidth=110
set updatetime=200
let mapleader = " "

" REMAPPING KEYS

" For Swedish keyboard layout
nnoremap å <C-]>
nnoremap ä @
nnoremap , @@

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Other
nnoremap <C-S> :wa<CR>
nnoremap / /\v
vnoremap / /\v
nnoremap <F5> "=strftime("%Y-%m-%d %H:%M")<CR>
inoremap <F5> <C-R>=strftime("%Y-%m-%d %H:%M")<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
tnoremap <Esc> <C-\><C-n>
map <F2> :NERDTreeToggle<CR>
map <F3> :ZenMode<CR>

" PLUGINS
call plug#begin()
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'scrooloose/NERDTree'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'tpope/vim-surround'
    Plug 'vimwiki/vimwiki'
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'morhetz/gruvbox'
    Plug 'sindrets/diffview.nvim'
    Plug 'ajorgensen/vim-markdown-toc'
    Plug 'folke/zen-mode.nvim'
    "Plug 'vim-airline/vim-airline'
    "Plug 'vim-airline/vim-airline-themes'
call plug#end()

" SOURCE OTHER FILES
source $HOME/.config/nvim/themes/gruvbox.vim

" PLUGIN SPECIFICS
lua << EOF
    require("zen-mode").setup {
  window = {
    backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
    -- height and width can be:
    -- * an absolute number of cells when > 1
    -- * a percentage of the width / height of the editor when <= 1
    -- * a function that returns the width or the height
    width = 120, -- width of the Zen window
    height = 1, -- height of the Zen window
    -- by default, no options are changed for the Zen window
    -- uncomment any of the options below, or add other vim.wo options you want to apply
    options = {
      -- signcolumn = "no", -- disable signcolumn
      number = false, -- disable number column
      -- relativenumber = false, -- disable relative numbers
      -- cursorline = false, -- disable cursorline
      -- cursorcolumn = false, -- disable cursor column
      -- foldcolumn = "0", -- disable fold column
      -- list = false, -- disable whitespace characters
    },
  },
  plugins = {
    -- disable some global vim options (vim.o...)
    -- comment the lines to not apply the options
    options = {
      enabled = true,
      ruler = false, -- disables the ruler text in the cmd line area
      showcmd = false, -- disables the command in the last line of the screen
    },
    twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
    gitsigns = { enabled = false }, -- disables git signs
    tmux = { enabled = false }, -- disables the tmux statusline
    -- this will change the font size on kitty when in zen mode
    -- to make this work, you need to set the following kitty options:
    -- - allow_remote_control socket-only
    -- - listen_on unix:/tmp/kitty
    kitty = {
      enabled = false,
      font = "+4", -- font size increment
    },
  },
  -- callback where you can add custom code when the Zen window opens
  on_open = function(win)
  end,
  -- callback where you can add custom code when the Zen window closes
  on_close = function()
  end,
}
EOF
