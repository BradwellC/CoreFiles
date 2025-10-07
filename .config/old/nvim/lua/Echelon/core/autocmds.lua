vim.api.nvim_create_augroup("FiletypeOverride", { clear = true })
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  group = "FiletypeOverride",
  pattern = "*.html",
  command = "set filetype=html",
})
