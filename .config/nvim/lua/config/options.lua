
local opt = vim.opt

-- Basic Settings
opt.number = true -- Line Numbers
opt.relativenumber = true --  Relative Line Numbers
opt.cursorline = true -- highlight Current Line
opt.scrolloff = 10 -- Keep 10 Lines Above/Below Of Cursor
opt.sidescrolloff = 8 -- Keep 8 Columns Left/Right Of Cursor
opt.cmdheight = 1 -- Command Line hight
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Tab / Indentation
opt.tabstop = 2 -- Tab Width
opt.shiftwidth = 2 -- Indent Width
opt.softtabstop = 2 -- Soft tab Stop
opt.expandtab = true -- Use Spaces Instead Of Tab
opt.smartindent = true -- Smart Auto-Indenting
opt.autoindent = true -- Copy Indent From Current Line
opt.grepprg = "rg --vimgrep"
opt.grepformat = "%f:%1:%c:%m"

-- Search Setting
opt.ignorecase = true -- Case insensitive search
opt.smartcase = true -- Case-sensitive if uppercase
opt.incsearch = true -- Show matches as you type

-- Visual Settings
opt.termguicolors = true -- Enable 24-bit colors
opt.signcolumn = "yes" -- Always show sign column
opt.showmatch = true -- Highlight matching brackets
opt.matchtime = 2 -- How long to show matching brackets
opt.completeopt = "menuone,noinsert,noselect" -- Completion options
opt.showmode = false -- Don't show mode in command line

opt.pumheight = 10 -- Popup menu height
opt.pumblend = 10 -- Popup menu transparency
opt.winblend = 0 -- floating window transparency
opt.conceallevel = 0 -- Don't hide markup
opt.concealcursor = "" -- Show markup even on cursor line
opt.lazyredraw = false -- redraw while executing macros
opt.redrawtime = 10000 -- Timeout for syntax highlighting redraw

-- File Handling
opt.backup = false -- Don't create backup file
opt.writebackup = false -- Don't backup before overwriting
opt.swapfile = false -- Don't create swap files
opt.undofile = true -- Persistent undo
opt.updatetime = 10000 -- Time in ms to trigger cursorhold
opt.timeoutlen = 500 -- Time in ms to wait for mapped sequence
opt.ttimeoutlen = 100 -- No wait for key code sequence
opt.autoread = true -- auto-load file if change outside
opt.autowrite = false -- Don't auto-save on some events
opt.diffopt:append("vertical") -- Vertical diff splits
opt.diffopt:append("algorithm:patience") -- Better diff algorithm
opt.diffopt:append("linematch:60") -- Better diff highlighting

-- Set undo directory
local undodir = "~/.local/share/nvim/undodir" -- undo directory path
vim.opt.undodir = vim.fn.expand(undodir) -- Expand full path
local undodir_path = vim.fn.expand(undodir)
if vim.fn.isdirectory(undodir_path) == 0 then
	vim.fn.mkdir(undodir_path, "p") -- Create if not exists
end

-- Behavior Settings
opt.errorbells = false -- Disable error sounds
opt.backspace = "indent,eol,start" -- Make backspace behave naturally
opt.autochdir = false -- Don't change directory automatically
opt.iskeyword:append("-") -- Treat dash as part of a word
opt.path:append("**") -- Search into subfolders with 'gf'
opt.selection = "inclusive" -- use inclusive selection
opt.mouse = "a" -- Allow mouse support
opt.clipboard:append("unnamedplus") -- Use system clipboard
opt.modifiable = true -- Allow editing buffers
opt.encoding = "UTF-8" -- Use UTF-8 encoding

-- Split Behavior
opt.splitright = true
opt.splitbelow = true
