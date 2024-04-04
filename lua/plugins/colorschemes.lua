return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "shaunsingh/nord.nvim" },
  { "Yazeed1s/minimal.nvim" },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    config = function()
      require("catppuccin").setup({})
    end,
  },

  -- add kanagawa
  { "rebelot/kanagawa.nvim" },

  -- add kepano
  { "kepano/flexoki" },

  -- add nyoom
  { "nyoom-engineering/oxocarbon.nvim" },
}
