return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
	keys = {
		{
			"<leader>sf",
			function()
				require("fzf-lua").files()
			end,
			desc = "[S]earch [F]iles",
		},
		{
			"<leader>sg",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "[S]earch Live [G]rep",
		},
		{
			"<leader>sc",
			function()
				require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "[S]earch Nvim [C]onfiguration",
		},
		{
			"<leader>sb",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "[S]earch [B]uffers",
		},
		{
			"<leader>sh",
			function()
				require("fzf-lua").help_tags()
			end,
			desc = "[S]earch [H]elp Tags",
		},
		{
			"<leader>sk",
			function()
				require("fzf-lua").keymaps()
			end,
			desc = "[S]earch [K]eymaps",
		},
		{
			"<leader>sd",
			function()
				require("fzf-lua").diagnostics_document()
			end,
			desc = "[S]earch [D]iagnostics Document",
		},
		{
			"<leader>sD",
			function()
				require("fzf-lua").diagnostics_workspace()
			end,
			desc = "[S]earch [D]iagnostics Workspace",
		},
		{
			"<leader>ss",
			function()
				require("fzf-lua").lsp_document_symbols()
			end,
			desc = "[S]earch Document [S]ymbols",
		},
	},
}
