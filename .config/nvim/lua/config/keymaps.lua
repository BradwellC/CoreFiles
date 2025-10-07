local keymap = vim.keymap

-- Exit Insert Mode
keymap.set("i", "qw", "<Esc>", { desc = "[Q]uit [I]nsert [M]ode" })

-- Clear highlights on search
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear Search Highlight" })

-- Exit terminal mode
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit [T]erminal mode" })

-- Diagnostics keymaps
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Keybinds to make split navigation easier.
--  See `:help wincmd` for a list of all window commands
keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment Number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement Number" })

-- window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split [W]indow [V]ertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split [W]indow [H]orizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Split [W]indow [E]qually" })
keymap.set("n", "<leader>wc", "<cmd>close<CR>", { desc = "[C]lose [W]indow Split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "[O]pen New [T]ab" })
keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "[T]ab [C]lose" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "[N]ext [T]ab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "[P]revious [T]ab" })
keymap.set("n", "<leader>tb", "<cmd>tabnew %<CR>", { desc = "Open [B]uffer In [T]ab" })

-- Select All
keymap.set("n", "<C-a>", "", { desc = "Select All Content" })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- File Explorer
keymap.set("n", "-", "<cmd>:Oil --float<CR>", { desc = "Open Oil Directory" })
