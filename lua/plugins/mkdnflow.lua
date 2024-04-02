return {
  "jakewvincent/mkdnflow.nvim",
  config = function()
    -- ** DEFAULT SETTINGS; TO USE THESE, PASS NO ARGUMENTS TO THE SETUP FUNCTION **
    require("mkdnflow").setup({
      modules = {
        bib = true,
        buffers = false,
        conceal = true,
        cursor = true,
        folds = true,
        -- There are conflicts with how Obsidian resolves paths, if I can get this sorted it would be super nice
        links = false,
        -- There are conflicts on how
        paths = false,
        lists = true,
        maps = true,
        tables = true,
        yaml = false,
        cmp = false,
      },
      filetypes = { md = true, rmd = true, markdown = true },
      create_dirs = true,
      perspective = {
        -- priority = "first",
        priority = "current",
        -- root_tell = ".wiki",
        root_tell = false,
        -- root = "/Users/jonathanhigger/all-notes",
        nvim_wd_heel = false,
        update = false,
      },
      wrap = false,
      bib = {
        default_path = nil,
        find_in_root = true,
      },
      silent = false,
      cursor = {
        jump_patterns = nil,
      },
      links = {
        style = "wiki",
        name_is_source = false,
        conceal = false,
        context = 0,
        implicit_extension = nil,
        transform_implicit = false,
        transform_explicit = function(text)
          text = text:gsub(" ", "-")
          text = text:lower()
          text = require("custom.note_id").note_id() .. "_" .. text
          return text
        end,
      },
      new_file_template = {
        use_template = false,
        placeholders = {
          before = {
            title = "link_title",
            date = "os_date",
          },
          after = {},
        },
        template = "# {{ title }}",
      },
      to_do = {
        symbols = { " ", ">", "x", "c" },
        update_parents = true,
        not_started = " ",
        in_progress = ">",
        complete = "x",
        canceled = "x",
      },
      tables = {
        trim_whitespace = true,
        format_on_move = true,
        auto_extend_rows = false,
        auto_extend_cols = false,
        style = {
          cell_padding = 1,
          separator_padding = 1,
          outer_pipes = true,
          mimic_alignment = true,
        },
      },
      yaml = {
        bib = { override = false },
      },
      mappings = {
        -- MkdnEnter = { { "n", "v" }, "<CR>" },
        MkdnTab = false,
        MkdnSTab = false,
        MkdnNextLink = { "n", "<Tab>" },
        MkdnPrevLink = { "n", "<S-Tab>" },
        MkdnNextHeading = { "n", "]]" },
        MkdnPrevHeading = { "n", "[[" },
        MkdnGoBack = { "n", "<BS>" },
        MkdnGoForward = { "n", "<Del>" },
        MkdnCreateLink = false, -- see MkdnEnter
        MkdnCreateLinkFromClipboard = { { "n", "v" }, "<leader>p" }, -- see MkdnEnter
        MkdnFollowLink = false, -- see MkdnEnter
        -- MkdnDestroyLink = { "n", "<M-CR>" },
        -- MkdnTagSpan = { "v", "<M-CR>" },
        MkdnMoveSource = { "n", "<F2>" },
        MkdnYankAnchorLink = { "n", "yaa" },
        MkdnYankFileAnchorLink = { "n", "yfa" },
        MkdnIncreaseHeading = { "n", "+" },
        MkdnDecreaseHeading = { "n", "-" },
        MkdnToggleToDo = { { "n", "v" }, "<C-Space>" },
        MkdnNewListItem = false,
        MkdnNewListItemBelowInsert = { "n", "o" },
        MkdnNewListItemAboveInsert = { "n", "O" },
        MkdnExtendList = false,
        MkdnUpdateNumbering = { "n", "<leader>nn" },
        MkdnTableNextCell = { "i", "<Tab>" },
        MkdnTablePrevCell = { "i", "<S-Tab>" },
        MkdnTableNextRow = false,
        MkdnTablePrevRow = { "i", "<M-CR>" },
        MkdnTableNewRowBelow = { "n", "<leader>ir" },
        MkdnTableNewRowAbove = { "n", "<leader>iR" },
        MkdnTableNewColAfter = { "n", "<leader>ic" },
        MkdnTableNewColBefore = { "n", "<leader>iC" },
        MkdnFoldSection = { "n", "<leader>f" },
        MkdnUnfoldSection = { "n", "<leader>F" },
      },
    })
  end,
}
