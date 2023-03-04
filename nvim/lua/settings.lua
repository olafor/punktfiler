vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = true
vim.opt.errorbells = false
vim.opt.belloff = 'all'
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.smartcase = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.cmdheight = 1
vim.opt.updatetime = 50
vim.opt.laststatus = 2
vim.opt.title = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.wildmenu = true
vim.opt.wildmode = 'full'
vim.opt.background = 'dark'
vim.opt.complete = 'k,.'
vim.opt.textwidth = 110
vim.opt.updatetime = 200
vim.opt.nu = true
vim.opt.syntax = 'on'
vim.opt.conceallevel = 2
vim.opt.concealcursor = 'nc'
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.cmd([[
"syntax enable
colorscheme tokyonight-night
if (has('termguicolors'))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
autocmd FileType org GitGutterDisable"
]])


