LazyVim = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>/", false },
    -- change a keymap
    { "<leader>ff", LazyVim.telescope("files"), { cwd = false }, desc = "Find Files (cwd)" },
    { "<leader>fF", LazyVim.telescope("files", { cwd = false }), desc = "Find Files (root)" },
    -- add a keymap to browse plugin files
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Plugin File",
    },
  },
}
