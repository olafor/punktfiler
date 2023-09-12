return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'airblade/vim-gitgutter'
  use 'ajorgensen/vim-markdown-toc'
  --use {
    --'akinsho/org-bullets.nvim',
    --config = function()
    --require('org-bullets').setup()
  --end}
  use 'folke/tokyonight.nvim'
  use {
    'folke/which-key.nvim',
    config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 1000
    require("which-key").setup {}
  end}
  use 'folke/zen-mode.nvim'
  use 'hrsh7th/nvim-cmp'
  use 'jiangmiao/auto-pairs'
  use 'jubnzv/mdeval.nvim'
  use 'morhetz/gruvbox'
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-orgmode/orgmode',
    config = function()
    require('orgmode').setup{}
  end}
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'preservim/tagbar'
  use 'rust-lang/rust.vim'
  use 'scrooloose/NERDTree'
  use 'sheerun/vim-polyglot'
  use 'sindrets/diffview.nvim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'ggandor/leap.nvim'
end)
