return {
  "ellisonleao/gruvbox.nvim",
  lazy = false,       -- load immediately
  priority = 1000,    -- load first
  config = function()
    vim.opt.termguicolors = true

    require("gruvbox").setup({
      terminal_colors = true,
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      inverse = true,
      contrast = "",
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = true,
    })

    vim.cmd("colorscheme gruvbox")
  end,
}

