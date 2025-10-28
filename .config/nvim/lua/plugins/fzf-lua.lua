return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
	config = function()
		require("fzf-lua").setup({
			fzf_colors = true,
			fzf_opts = {
				["--cycle"] = true,
				["--ansi"] = true,
				["--height"] = "100%",
				["--highlight-line"] = true,
			},
			winopts = {
				height = 0.90,
				width = 0.80,
			},
			defaults = {
				formatter = "path.dirname_first",
			},
		})

		vim.keymap.set("n", "<leader>ff", require("fzf-lua").files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>fg", require("fzf-lua").live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fb", require("fzf-lua").buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>fh", require("fzf-lua").help_tags, { desc = "Telescope help tags" })
	end,
}
