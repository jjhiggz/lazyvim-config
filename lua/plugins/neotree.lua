return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>ee",
      function()
        require("neo-tree.command").execute({ toggle = true })
      end,
      desc = "Files",
    },
    {
      "<leader>eg",
      function()
        require("neo-tree.command").execute({ source = "git_status", toggle = true })
      end,
      desc = "Git",
    },
    {
      "<leader>eb",
      function()
        require("neo-tree.command").execute({ source = "buffers", toggle = true })
      end,
      desc = "Buffers",
    },
    {
      "<leader>es",
      "<cmd>SymbolsOutline<cr>",
      desc = "SymbolsOutline",
    },
  },
}
