vim.opt.conceallevel = 1
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oxocarbon",
    },
    checker = {
      enabled = true,
    },

    keys = {
      { "<leader>uz", "<cmd>set so=999<cr>", desc = "center cursor" },
      { "<leader>uZ", "<cmd>set so=200<cr>", desc = "uncenter cursor" },
    },
  },
}
