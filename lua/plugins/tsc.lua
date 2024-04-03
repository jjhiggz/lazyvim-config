return {
  "dmmulroy/tsc.nvim",
  config = function()
    require("tsc").setup({
      auto_open_qflist = true,
      auto_close_qflist = false,
      auto_focus_qflist = false,
      auto_start_watch_mode = false,
      use_trouble_qflist = false,
      -- bin_path = require("tsc").utils.find_tsc_bin(),
      enable_progress_notifications = true,
      flags = {
        noEmit = true,
        -- project = function()
        --   return require("tsc").utils.find_nearest_tsconfig()
        -- end,
        watch = false,
      },
      hide_progress_notifications_from_history = true,
      spinner = { "⣾", "⣽", "⣻", "⢿", "⡿", "⣟", "⣯", "⣷" },
      -- lol spinner 1
      -- spinner = {
      --   "........",
      --   "......c=",
      --   ".....c==",
      --   "....c==3",
      --   "...c==3.",
      --   "..c==3..",
      --   ".c==3...",
      --   "c==3....",
      --   "==3.....",
      --   "=3......",
      --   "3.......",
      -- },
      pretty_errors = true,
    })
  end,
}
