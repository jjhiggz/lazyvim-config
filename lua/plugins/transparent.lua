return {
  "xiyaowong/transparent.nvim",
  config = function()
    require("notify").setup({
      background_colour = "#000000",
    })
    local transparent = require("transparent")
    transparent.clear_prefix("NeoTree")
    transparent.clear_prefix("BufferLine")
    transparent.clear_prefix("lualine")
  end,
  keys = { { "<leader>uo", "<cmd>TransparentToggle<cr>", desc = "Toggle Opacity" } },
}
