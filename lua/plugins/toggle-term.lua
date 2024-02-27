return {
  "akinsho/toggleterm.nvim",
  config = true,
  cmd = "ToggleTerm",
  build = ":ToggleTerm",
  -- keys = { { "<F4>", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" } },
  keys = { { "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" } },
  opts = {
    open_mapping = [[<leader>tt]],
    direction = "horizontal",
    shade_filetypes = {},
    hide_numbers = true,
    insert_mappings = true,
    terminal_mappings = true,
    start_in_insert = true,
    close_on_exit = true,
  },
}
