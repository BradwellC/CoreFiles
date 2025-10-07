return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- call the setup function with properties to define how our lualine will look
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = "palenight",
        globalstatus = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      -- Setup what each lualine section will contain
      -- sections start at a on the left and go to z on the right
      sections = {
        -- display the current mode in section a
        lualine_a = { "mode" },
        -- display the current git branch, git differences, and any code diagnostics in section b
        lualine_b = { "branch", "diff", "diagnostics" },
        -- display the filename in section c
        lualine_c = { "filename" },
        -- display the file encoding type, os, and filetype in section x
        lualine_x = {
          -- {
          -- 	lazy_status.updates,
          -- 	cond = lazy_status.has_updates,
          -- 	color = { fg = "#ff9e64" },
          -- },
          { "filetype" },
        },
        -- display where you are at in the file in section y
        lualine_y = { "progress" },
        -- display exact location of the cursor in section z
        lualine_z = { "location" },
      },
    })
  end,
}
