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
  -- {
  --   "catppuccin/nvim",
  --   lazy = false,
  --   name = "catppuccin",
  --   -- you can do it like this with a config function
  --   config = function()
  --     require("catppuccin").setup({
  --       -- configurations
  --     })
  --   end,
  --   -- or just use opts table
  --   opts = {
  --     -- configurations
  --   },
  -- },

  -- add kanagawa
  { "rebelot/kanagawa.nvim" },

  -- add kepano
  { "kepano/flexoki" },

  -- add nyoom
  { "nyoom-engineering/oxocarbon.nvim" },
}
