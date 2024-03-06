return {
  "akinsho/toggleterm.nvim",
  config = true,
  cmd = "ToggleTerm",
  keys = {
    { "<leader>t1", "<cmd>1ToggleTerm<cr>", desc = "Toggle Terminal 1" },
    { "<leader>t2", "<cmd>2ToggleTerm<cr>", desc = "Toggle Terminal 2" },
    { "<leader>t3", "<cmd>3ToggleTerm<cr>", desc = "Toggle Terminal 3" },
    { "<leader>t|", "<cmd>3ToggleTerm direction=vertical width=1400<cr>", desc = "Toggle Terminal 3" },
    { "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
  },
  opts = {
    direction = "horizontal",
    shade_filetypes = {},
    hide_numbers = true,
    insert_mappings = true,
    terminal_mappings = true,
    start_in_insert = true,
    close_on_exit = true,
  },
}
