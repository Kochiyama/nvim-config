return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			variant = "moon",
			backend = "kitty",
			dark_variant = "main",
			dim_inactive_windows = false,
			extend_background_behind_borders = true,
			integrations = {},
			kitty_method = "normal",

			enable = {
				terminal = true,
				legacy_highlights = true,
				migrations = true,
			},

			styles = {
				bold = true,
				italic = true,
				transparency = false,
			},

			groups = {
				border = "muted",
				link = "iris",
				panel = "surface",

				error = "love",
				hint = "iris",
				info = "foam",
				note = "pine",
				todo = "rose",
				warn = "gold",

				git_add = "foam",
				git_change = "rose",
				git_delete = "love",
				git_dirty = "rose",
				git_ignore = "muted",
				git_merge = "iris",
				git_rename = "pine",
				git_stage = "iris",
				git_text = "rose",
				git_untracked = "subtle",

				h1 = "iris",
				h2 = "foam",
				h3 = "rose",
				h4 = "gold",
				h5 = "pine",
				h6 = "foam",
			},

			palette = {},

			highlight_groups = {
				EndOfBuffer = { fg = "surface", bg = "none" },

				TelescopeBorder = { fg = "highlight_high", bg = "none" },
				TelescopeNormal = { bg = "none" },
				TelescopePromptNormal = { bg = "base" },
				TelescopeResultsNormal = { fg = "subtle", bg = "none" },
				TelescopeSelection = { fg = "pine", bg = "none" },
				TelescopeSelectionCaret = { fg = "rose", bg = "none" },
				TelescopePreviewBorder = { fg = "highlight_high", bg = "none" },
				TelescopePreviewNormal = { bg = "none" },
				TelescopePreviewTitle = { fg = "text", bg = "none", bold = true },
				TelescopeMatching = { fg = "gold" },

				Cursor = { fg = "pine", bg = "gold" },
				lCursor = { fg = "pine", bg = "gold" },
			},

			before_highlight = function(group, highlight, palette)
				-- Disable all undercurls
				-- if highlight.undercurl then
				--     highlight.undercurl = false
				-- end
				--
				-- Change palette colour
				-- if highlight.fg == palette.pine then
				--     highlight.fg = palette.foam
				-- end
			end,
		})
	end,
}
