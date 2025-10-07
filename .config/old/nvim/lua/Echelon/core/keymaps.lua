-- Local keymaps
local keymap = vim.keymap



-- Clear highlights on search
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear Search Highlight' })

-- Exit terminal mode
keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit [T]erminal mode' })

-- Diagnostics keymaps
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Keybinds to make split navigation easier.
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Easly Split Window
keymap.set('n', '<leader>wv', '<C-w>v', { desc = "Split [W]orkspace [V]ertically" })
keymap.set('n', '<leader>wh', '<C-w>s', { desc = "Split [W]orkspace [H]orizontally" })
keymap.set('n', '<leader>we', '<C-w>=', { desc = "Split [W]orkspace [E]qually" })
keymap.set('n', '<leader>wc', '<cmd>close<CR>', { desc = "[W]orkspace [C]lose" })

-- Select All
keymap.set('n', '<C-a>', '', { desc = "Select All Content" })

-- Exit Insert Mode
keymap.set('i', 'qw', '<Esc>', { desc = "[Q]uit [I]nsert [M]ode" })

