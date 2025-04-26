-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- python
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "lua" },
  callback = function()
    vim.opt.tabstop = 4 -- Set tab width to 4 spaces
    vim.opt.shiftwidth = 4 -- Set indentation width to 4 spaces
    vim.opt.expandtab = true -- Use spaces instead of tabs
  end,
})
-- AutoSave
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.lua",
  callback = function()
    vim.lsp.buf.format() -- Format the file using LSP
  end,
})
-- Highlight
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ timeout = 300 }) -- Highlight yanked text for 300ms
  end,
})
-- NeoTree
-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     vim.cmd("Neotree") -- Open Neotree file explorer on startup
--   end,
-- })
-- The default conceallevel is 3 in LazyVim
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.opt.conceallevel = 0
  end,
})
