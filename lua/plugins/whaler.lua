return {
  "SalOrak/whaler",
  config = function()
    -- Telescope setup()
    local telescope = require("telescope")

    telescope.setup({
      -- Your telescope setup here...
      extensions = {
        whaler = {
          -- Whaler configuration
          oneoff_directories = {
            "~/all-notes",
            "~/devslopes-notes",
            "~/.config/nvim",
            "~/grading",
            "~/Projects",
          },
          directories = {
            "~/.config/",
            "~/grading",
            "~/all-notes",
            "~/Projects/",
            "~/devslopes-notes/",
            {
              path = "~/devslopes-notes/",
              alias = "work notes",
            },
          },
          auto_file_explorer = true, -- Whether to automatically open file explorer. By default is `true`
          auto_cwd = true, -- Whether to automatically change current working directory. By default is `true`
          file_explorer = "neotree", -- Automagically creates a configuration for the file explorer of your choice.
          -- Options are "netrw"(default), "nvimtree", "neotree", "oil", "telescope_file_browser".
          -- file_explorer_config = { -- (OPTIONAL) Map to configure what command is triggered by which plugin.
          --   hidden = false, -- Show hidden directories or not (default false)
          --   -- For basic configuration this is done automatically setting up the file_explorer config.
          --   plugin_name = "netrw", -- Plugin. Should be installed.
          --   command = "Explorer", -- The plugin command to open.
          --   -- Command must accept a path as parameter
          --   prefix_dir = " ", -- Prefix string to be appended after the command and before the directory path.
          --   -- Example: In the `telescope_file_browser` the value is ` path=`.
          --   --          The final command is `Telescope file_browser path=/path/to/dir`.
          --   -- By default is " " (space)
          -- },
          theme = { -- Telescope theme default Whaler options.
            results_title = false, -- Either `false` or a string.
            layout_strategy = "center",
            previewer = false,
            layout_config = {
              height = 0.3,
              width = 0.4,
            },
            sorting_strategy = "ascending",
            border = true,
          },
        },
      },
    })
    -- -- More config here
    telescope.load_extension("whaler")
    --
    -- -- Open whaler using <leader>fw
    vim.keymap.set("n", "<leader>fw", function()
      local w = telescope.extensions.whaler.whaler
      w({
        -- Settings can also be called here.
        -- These would use but not change the setup configuration.
      })
    end)
    --
    -- -- Or directly
    vim.keymap.set("n", "<leader>fw", telescope.extensions.whaler.whaler)
  end,
}
