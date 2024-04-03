-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- This line just makes word break a bit better when parsing through markdown
vim.cmd("set linebreak")

-- Without this line, certain watched processes get fucked up, I first noticed this with bun --watch, but think it might have been happening with remix dev as well.
-- Haven't noticed it since making this change
vim.cmd("set backupcopy=yes")
