-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- 创建一个自定义命令 :Fmt
vim.api.nvim_create_user_command("Fmt", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "使用内置 LSP 格式化当前缓冲区" })
