return {
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = {
    'rafamadriz/friendly-snippets',
    { "L3MON4D3/LuaSnip", keys = {} },
  },

  -- use a release tag to download pre-built binaries
  version = '1.*',
  -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
  -- build = 'cargo build --release',
  -- If you use nix, you can build from source using latest nightly rust with:
  -- build = 'nix run .#build-plugin',

  config = function()
    require("blink.cmp").setup({
      snippets = { preset = "luasnip" },
      signature = { enabled = true },
      appearance = {
        use_nvim_cmp_as_default = false,
        nerd_font_variant = "normal",
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
        providers = {
          cmdline = {
            min_keyword_length = 2,
          },
        },
      },
      keymap = {
        ["<C-f>"] = {},
      },
      cmdline = {
        enabled = false,
        completion = { menu = { auto_show = true } },
        keymap = {
          ["<CR>"] = { "accept_and_enter", "fallback" },
        },
      },
      completion = {
        menu = {
          border = nil,
          scrolloff = 1,
          scrollbar = false,
          draw = {
            columns = {
              { "kind_icon" },
              { "label",      "label_description", gap = 1 },
              { "kind" },
              { "source_name" },
            },
          },
        },
        documentation = {
          window = {
            border = nil,
            scrollbar = false,
            winhighlight = 'Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,EndOfBuffer:BlinkCmpDoc',
          },
          auto_show = true,
          auto_show_delay_ms = 500,
        },
      },
    })

    require("luasnip.loaders.from_vscode").lazy_load()
  end
}
