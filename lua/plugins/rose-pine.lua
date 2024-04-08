return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      variant = "moon",
      highlight_groups = {
        EndOfBuffer = { fg = "surface", bg = "none" },

        TelescopeBorder = { fg = "highlight_high", bg = "none" },
        TelescopeNormal = { bg = "none" },

        TelescopePreviewBorder = { fg = "highlight_high", bg = "none" },
        TelescopePreviewNormal = { bg = "none" },
        TelescopePreviewTitle = { fg = "text", bg = "none", bold = true },

        TelescopeResultsNormal = { fg = "subtle", bg = "none" },
        TelescopeMatching = { fg = "gold" },

        TelescopeSelectionCaret = { fg = "rose", bg = "none" },
        TelescopeSelection = { fg = "pine", bg = "none" },
      },
    })
    vim.cmd("colorscheme rose-pine")
  end,
}
