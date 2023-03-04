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

vim.cmd([[
"
cnoremap help vert help
tnoremap <Esc> <C-\><C-n>
nnoremap <F5> i<C-R>=strftime("%Y-%m-%d %H:%M")<CR><Esc>
inoremap <F5> <C-R>=strftime("%Y-%m-%d %H:%M")<CR>
"
]])
