" OLAS VIMRC

" FUNKTIONER
function OlasTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let bname = bufname(buflist[winnr - 1])
  if strlen(bname) == 0
    return "[Empty]"
  else
    let i = strridx(bname, "/")
    return strpart(bname, i+1)
endfunction

function OlasTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
	" select the highlighting
	if i + 1 == tabpagenr()
	  let s ..= '%#TabLineSel#'
	else
	  let s ..= '%#TabLine#'
	endif

	" set the tab page number (for mouse clicks)
	let s ..= '%' .. (i + 1) .. 'T'

	" the label is made by OlasTabLabel()
	let s ..= ' %{OlasTabLabel(' .. (i + 1) .. ')} '
  endfor

  " after the last tab fill with TabLineFill and reset tab page nr
  let s ..= '%#TabLineFill#%T'

  " right-align the label to close the current tab page
  if tabpagenr('$') > 1
	let s ..= '%=%#TabLine#%999Xclose'
  endif
  return s
endfunction

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
set nu
set tabline=%!OlasTabLine()
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
nnoremap <F5> i<C-R>=strftime("%Y-%m-%d %H:%M")<CR><Esc>
inoremap <F5> <C-R>=strftime("%Y-%m-%d %H:%M")<CR>
nnoremap <Tab> :tabnext<CR>
nnoremap <S-Tab> :tabprevious<CR>
tnoremap <Esc> <C-\><C-n>
map <F1> :tabnew %<CR>
map <F2> :NERDTreeToggleVCS<CR>
map <F3> :ZenMode<CR>
cnoremap help vert help

" PLUGINS
call plug#begin()
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'scrooloose/NERDTree'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'tpope/vim-surround'
  Plug 'sheerun/vim-polyglot'
  Plug 'jiangmiao/auto-pairs'
  Plug 'morhetz/gruvbox'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'sindrets/diffview.nvim'
  Plug 'ajorgensen/vim-markdown-toc'
  Plug 'folke/zen-mode.nvim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'rust-lang/rust.vim'
  Plug 'preservim/tagbar'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'nvim-orgmode/orgmode'
call plug#end()

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif"

syntax on
colorscheme tokyonight-night

lua << EOF

-- Load custom tree-sitter grammar for org filetype
require('orgmode').setup_ts_grammar()

-- Tree-sitter configuration
require'nvim-treesitter.configs'.setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    disable = {'org'}, -- Remove this to use TS highlighter for some of the highlights (Experimental)
    additional_vim_regex_highlighting = {'org'}, -- Required since TS highlighter doesn't support all syntax features (conceal)
  },
  ensure_installed = {'org'}, -- Or run :TSUpdate org
}

require('orgmode').setup({
  org_agenda_files = '~/org/*',
  org_default_notes_file = '~/org/anteckningar.org',
  org_todo_keywords = { 'ATT GÖRA', '|', 'KLAR' },
  org_todo_keyword_faces = {},
  org_deadline_warning_days = 14,
  org_agenda_min_height = 16,
  org_agenda_span = 'week', -- day/week/month/year/number of days
  org_agenda_start_on_weekday = 1,
  org_agenda_start_day = nil, -- start from today + this modifier
  calendar_week_start_day = 1,
  org_capture_templates = {
    t = {
      description = 'Task',
      template = '* ATT GÖRA %?\n  %u',
    },
    i = {
      description = 'idéer',
      template = '* %?\n  Entered on %U\n'
      },
    d = {
      description = 'Dagbok',
      template = '* %U\n%?'
      },
    a = {
      description = 'Anteckning',
      template = '* %?\n%U\n'
      },
    f = {
      description = 'Fysik',
      template = '|%U|%?| | | |'
      },
    b = {
      description = 'Bok färdigläst',
      template = '* %?\n%U\n'
      },
    p = {
      description = 'Paper finished',
      template = '* %?\n%U\n'
      }
  },
  org_agenda_skip_scheduled_if_done = false,
  org_agenda_skip_deadline_if_done = false,
  org_agenda_text_search_extra_files = {},
  org_priority_highest = 'A',
  org_priority_default = 'B',
  org_priority_lowest = 'C',
  org_archive_location = '%s_archive::',
  org_tags_column = -80,
  org_use_tag_inheritance = true,
  org_tags_exclude_from_inheritance = {},
  org_hide_leading_stars = false,
  org_hide_emphasis_markers = false,
  org_ellipsis = '...',
  org_log_done = 'time',
  org_highlight_latex_and_related = nil,
  org_custom_exports = {},
  org_indent_mode = 'indent',
  org_time_stamp_rounding_minutes = 5,
  org_blank_before_new_entry = {
    heading = true,
    plain_list_item = false,
  },
  org_src_window_setup = 'top 16new',
  org_edit_src_content_indentation = 0,
  diagnostics = true,
  win_split_mode = 'horizontal',
  notifications = {
    enabled = false,
    cron_enabled = true,
    repeater_reminder_time = false,
    deadline_warning_reminder_time = 0,
    reminder_time = 10,
    deadline_reminder = true,
    scheduled_reminder = true,
  },
  mappings = {
    disable_all = false,
    prefix = '<Leader>o',
    global = {
      org_agenda = '<prefix>a',
      org_capture = '<prefix>c',
    },
    agenda = {
      org_agenda_later = 'f',
      org_agenda_earlier = 'b',
      org_agenda_goto_today = '.',
      org_agenda_day_view = 'vd',
      org_agenda_week_view = 'vw',
      org_agenda_month_view = 'vm',
      org_agenda_year_view = 'vy',
      org_agenda_quit = 'q',
      org_agenda_switch_to = '<CR>',
      org_agenda_goto = '<TAB>',
      org_agenda_goto_date = 'J',
      org_agenda_redo = 'r',
      org_agenda_todo = 't',
      org_agenda_clock_goto = '<prefix>xj',
      org_agenda_set_effort = '<prefix>xe',
      org_agenda_clock_in = 'I',
      org_agenda_clock_out = 'O',
      org_agenda_clock_cancel = 'X',
      org_agenda_clockreport_mode = 'R',
      org_agenda_priority = '<prefix>,',
      org_agenda_priority_up = '+',
      org_agenda_priority_down = '-',
      org_agenda_archive = '<prefix>$',
      org_agenda_toggle_archive_tag = '<prefix>A',
      org_agenda_set_tags = '<prefix>t',
      org_agenda_deadline = '<prefix>id',
      org_agenda_schedule = '<prefix>is',
      org_agenda_filter = '/',
      org_agenda_show_help = 'g?',
    },
    capture = {
      org_capture_finalize = '<C-c>',
      org_capture_refile = '<prefix>r',
      org_capture_kill = '<prefix>k',
      org_capture_show_help = 'g?',
    },
    note = {
      org_note_finalize = '<C-c>',
      org_note_kill = '<prefix>k',
      org_note_show_help = 'g?',
    },
    org = {
      org_refile = '<prefix>r',
      org_timestamp_up_day = '<S-UP>',
      org_timestamp_down_day = '<S-DOWN>',
      org_timestamp_up = '<C-a>',
      org_timestamp_down = '<C-x>',
      org_change_date = 'cid',
      org_priority = '<prefix>,',
      org_priority_up = 'ciR',
      org_priority_down = 'cir',
      org_todo = 'cit',
      org_todo_prev = 'ciT',
      org_toggle_checkbox = '<C-Space>',
      org_toggle_heading = '<prefix>*',
      org_open_at_point = '<prefix>o',
      org_edit_special = [[<prefix>']],
      org_cycle = '<TAB>',
      org_global_cycle = '<S-TAB>',
      org_archive_subtree = '<prefix>$',
      org_set_tags_command = '<prefix>t',
      org_toggle_archive_tag = '<prefix>A',
      org_do_promote = '<<',
      org_do_demote = '>>',
      org_promote_subtree = '<s',
      org_demote_subtree = '>s',
      org_meta_return = '<Leader><CR>', -- Add heading, item or row (context-dependent)
      org_return = '<CR>',
      org_insert_heading_respect_content = '<prefix>ih', -- Add new heading after current heading block (same level)
      org_insert_todo_heading = '<prefix>iT', -- Add new todo heading right after current heading (same level)
      org_insert_todo_heading_respect_content = '<prefix>it', -- Add new todo heading after current heading block (same level)
      org_move_subtree_up = '<prefix>K',
      org_move_subtree_down = '<prefix>J',
      org_export = '<prefix>e',
      org_next_visible_heading = '}',
      org_previous_visible_heading = '{',
      org_forward_heading_same_level = ']]',
      org_backward_heading_same_level = '[[',
      outline_up_heading = 'g{',
      org_deadline = '<prefix>id',
      org_schedule = '<prefix>is',
      org_time_stamp = '<prefix>i.',
      org_time_stamp_inactive = '<prefix>i!',
      org_clock_in = '<prefix>xi',
      org_clock_out = '<prefix>xo',
      org_clock_cancel = '<prefix>xq',
      org_clock_goto = '<prefix>xj',
      org_set_effort = '<prefix>xe',
      org_show_help = 'g?',
    },
    edit_src = {
      org_edit_src_abort = '<prefix>k',
      org_edit_src_save = '<prefix>w',
      org_edit_src_show_help = 'g?',
    },
    text_objects = {
      inner_heading = 'ih',
      around_heading = 'ah',
      inner_subtree = 'ir',
      around_subtree = 'ar',
      inner_heading_from_root = 'Oh',
      around_heading_from_root = 'OH',
      inner_subtree_from_root = 'Or',
      around_subtree_from_root = 'OR',
    },
  },
})

EOF
