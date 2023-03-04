-- OLAS INIT.LUA

-- PLUGINS
require('lua/plugins')

vim.cmd([[
"syntax enable
colorscheme tokyonight-night
cnoremap help vert help
tnoremap <Esc> <C-\><C-n>
nnoremap <F5> i<C-R>=strftime("%Y-%m-%d %H:%M")<CR><Esc>
inoremap <F5> <C-R>=strftime("%Y-%m-%d %H:%M")<CR>

if (has('termguicolors'))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif"
]])

-- FUNKTIONER
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

-- SETTING SYSTEM VARIABLES
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
vim.opt.concealcursor = nc
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- REMAPPING KEYS

-- För svenskt tangentbord
nmap('å', '<C-]>')
nmap('ä', '@')
nmap(',', '@@')

-- Find files using Telescope command-line sugar.
nmap('<leader>ff', '<cmd>Telescope find_files<cr>')
nmap('<leader>fg', '<cmd>Telescope live_grep<cr>')
nmap('<leader>fb', '<cmd>Telescope buffers<cr>')
nmap('<leader>fh', '<cmd>Telescope help_tags<cr>')

-- Other
nmap('<C-S>', ':wa<CR>')
nmap('/', '/\\v')
vmap('/', '/\\v')
nmap('<F1>', ':tabnew %<CR>')
nmap('<F2>', ':NERDTreeToggleVCS<CR>')
nmap('<F3>', ':ZenMode<CR>')
