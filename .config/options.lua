
-- Setting opts locally
local opt = vim.opt

-- Basic Settings
opt.number = true -- Line Number
opt.relativenumber = true -- Relative Line Number
opt.cursorline = true -- Hightlight curent line
opt.scrolloff = 10 -- Keep 10 lines above/below cursor
opt.wrap = false -- Don't wrap lines
opt.cmdheight = 1 -- Command line height

-- Tabbing / Indentation
opt.tabstop = 2 -- Tab Width
opt.shiftwidth = 2 -- Indent Width
opt.softtabstop = 2 -- Soft Tab stop
opt.expandtab = true -- Use spaces instead of tabs
opt.smartindent = true -- Smart auto-indenting
opt.autoindent = true -- Copy indent from current line
opt.grepprg = 'rg --vimgrep' -- use ripgrep if available
opt.grepformat = '%f:%1:%c:%m' -- filename, line number, column, content

-- Search Settings
opt.ignorecase = true -- Case-insenitive search
opt.smartcase = true -- Case-sensitive if uppercase used
opt.incsearch -- Show matches as search

-- Visual Settings
opt.termguicolors = true -- Enable 24-bit colors
opt.signcolumn = 'yes' -- Always show sign column
opt.showmatch = true -- Highlight matching bracket
opt.matchtime = 2 -- How long matching bracket shows
opt.completeopt = 'menuone,noinsert,noselect' -- Completion options
opt.showmode = false -- Don't show mode in command line

-- File Handling
opt.writebackup = false -- Don't backup before overwriting
opt.undofile = true -- Persistent undo
opt.swapfile = false -- Don't create swap file
opt.backup = false -- Don't create backup files
opt.updatetime = 300 -- Time in ms to trigger cursorhold
opt.timeoutlen = 500 -- Time in ms to wait for mapped sequence
opt.ttimeoutlen = 0 -- No wait for key code sequence
opt.autoread = true -- Auto-reload file if changed outside

opt.diffopt:append('vertical')
opt.diffopt:append('algorithm:patience')
opt.diffopt:append('linematch:60')

-- Set undo directory
local undodir = '~/.local/share/nvim/undodir' -- Undo directory path
vim.opt.undodir = vim.fn.expand(undodir) -- Expand to full path
local undodir_path = vim.fn.expand(undodir)
if vim.fn.isdirectory(undodir_path) == 0 then
	vim.fn.mkdir(undodir_path, 'p')
end

-- Behavior Settings
opt.errorbells = false -- Disable error sounds
opt.backspace = 'indent,eol,start' -- make backspace behave normally
opt.autochdir = false -- Don't change dir auto
opt.iskeyword:append('-') -- Treat dash as part of the word
op.path:append('**') -- Search subfolderts with 'gf'
opt.selection = 'inclusive' -- Use inclusive selection
opt.mouse = 'a' -- Enable mouse support
opt.clipboard:append('unnamedplus') -- Use system clipboard
opt.modifiable = true -- Allow editing buffers
opt.encoding = 'UTF-8' -- Use UTF-8 encoding

opt.splitright = true
opt.splitbelow = true
