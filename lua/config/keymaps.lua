-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "<A-k>")
vim.keymap.del("n", "<A-j>")

vim.keymap.del("i", "<A-j>")
vim.keymap.del("i", "<A-k>")

vim.keymap.del("v", "<A-j>")
vim.keymap.del("v", "<A-k>")

-- alt h
vim.keymap.set("n", "˙", "<cmd>vertical resize -1<cr>")
-- alt l
vim.keymap.set("n", "¬", "<cmd>vertical resize +1<cr>")
-- alt k
vim.keymap.set("n", "˚", "<cmd>horizontal resize +1<cr>")
-- alt j
vim.keymap.set("n", "∆", "<cmd>horizontal resize -1<cr>")

-- Want to have more flexible buffer opening
-- see neotree.lua for mappings
vim.keymap.del("n", "<leader>e")

local wk = require("which-key")

-- Obsidian Configs
vim.keymap.set("n", "<leader>ow", "<cmd>ObsidianWorkspace<cr>")
vim.keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<cr>")
vim.keymap.set("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<cr>")
vim.keymap.set("n", "<leader>oc", "<cmd>ObsidianCheck<cr>")
vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<cr>")

-- dailies
vim.keymap.set("n", "<leader>odd", "<cmd>ObsidianToday<cr>")
vim.keymap.set("n", "<leader>ody", "<cmd>ObsidianYesterday<cr>")
vim.keymap.set("n", "<leader>ods", "<cmd>ObsidianDailies<cr>")
vim.keymap.set("n", "<leader>odt", "<cmd>ObsidianTomorrow<cr>")

-- follow link
vim.keymap.set("n", "<leader>ofl", "<cmd>ObsidianFollowLink<cr>")
vim.keymap.set("n", "<leader>ofv", "<cmd>ObsidianFollowLink vsplit<cr>")
vim.keymap.set("n", "<leader>ofh", "<cmd>ObsidianFollowLink hsplit<cr>")

vim.keymap.set("n", "<leader>or", "<cmd>ObsidianRename<cr>")

-- follow link
vim.keymap.set("v", "<leader>oll", "<cmd>ObsidianLink<cr>")
vim.keymap.set("v", "<leader>oln", "<cmd>ObsidianLinkNew<cr>")
vim.keymap.set("v", "<leader>ofs", "<cmd>ObsidianLinks<cr>")
-- vim.keymap.set("n", "od", "<cmd>ObsidianOpen devslopes/Devslopes TDL<cr>")

wk.register({
  o = {
    name = "Obsidian", -- optional group name
    f = {
      name = "follow / find",
    },
    l = {
      l = "Link",
      n = "New Link",
      s = "Search",
    },
    d = {
      name = "dailies",
      {
        d = "Today",
        y = "Yesterday",
        s = "Search",
        t = "Tomorrow",
      },
    },
  },
}, { prefix = "<leader>" })

vim.keymap.set("n", "<BS>", "<cmd>BufSurfBack<cr>")
vim.keymap.set("n", "<leader><BS>", "<cmd>BufSurfForward<cr>")
