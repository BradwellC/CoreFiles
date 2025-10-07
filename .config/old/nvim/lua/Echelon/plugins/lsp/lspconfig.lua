return {
  -- Main LSP Configuration
  'neovim/nvim-lspconfig',
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },

  config = function()
    local lspconfig = require("lspconfig")

    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local capabilities = cmp_nvim_lsp.default_capabilities()

    lspconfig.lua_ls.setup({
      capabilities = capabilities
    })
    lspconfig.dockerls.setup({
      capabilities = capabilities
    })
    lspconfig.cssls.setup({
      capabilities = capabilities
    })
    lspconfig.ts_ls.setup({
      capabilities = capabilities
    })
    lspconfig.eslint.setup({
      capabilities = capabilities
    })
    lspconfig.pyright.setup({
      capabilities = capabilities
    })
    lspconfig.html.setup({
      capabilities = capabilities
    })
    lspconfig.intelephense.setup({
      capabilities = capabilities
    })
    lspconfig.gopls.setup({
      capabilities = capabilities
    })
    lspconfig.jsonls.setup({
      capabilities = capabilities
    })
    lspconfig.sqlls.setup({
      capabilities = capabilities
    })

    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
      callback = function(event)
        local map = function(keys, func, desc, mode)
          mode = mode or 'n'
          vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
          -- End of keymap function
        end

        -- Keymaps Start
        map('<leader>cd', require('telescope.builtin').lsp_definitions, '[C]ode [D]efinition')
        map('<leader>cr', require('telescope.builtin').lsp_references, '[C]ode [R]references')
        map('<leader>cI', require('telescope.builtin').lsp_implementations, '[C]ode [I]mplementations')
        map('<leader>ch', vim.lsp.buf.hover, '[C]ode [H]over')
        map('<leader>D', require('telescope.builtin').lsp_type_definitions, '[T]ype [D]efinition')
        map('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
        map('<leader>ws', require('telescope.builtin').lsp_workspace_symbols, '[W]orkspace [S]ymbols')
        map('<leader>cR', vim.lsp.buf.rename, '[C]ode [R]ename')
        map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction', { 'n', 'x' })
        map('<leader>cD', vim.lsp.buf.declaration, '[C]ode [D]eclaration')
        -- Keymaps End

        -- End of autocmd
      end,
    })
  end,
}
