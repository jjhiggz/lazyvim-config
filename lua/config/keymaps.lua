-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "<A-k>")
vim.keymap.del("n", "<A-j>")

vim.keymap.del("i", "<A-j>")
vim.keymap.del("i", "<A-k>")

vim.keymap.del("v", "<A-j>")
vim.keymap.del("v", "<A-k>")

vim.keymap.set("n", "˙", "<cmd>vertical resize -1<cr>")
vim.keymap.set("n", "¬", "<cmd>vertical resize +1<cr>")
vim.keymap.set("n", "˚", "<cmd>horizontal resize +1<cr>")
vim.keymap.set("n", "∆", "<cmd>horizontal resize -1<cr>")
