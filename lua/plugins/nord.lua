return {
	"arcticicestudio/nord-vim",
	config = function()
		vim.g.nord_bold_vertical_split_line = 0
		vim.g.nord_uniform_diff_background = 1
		vim.g.nord_italic = 1
		vim.g.nord_italic_comments = 1
		vim.g.nord_underline = 1
		vim.g.nord_disable_background = true
		-- vim.cmd("colorscheme nord")
		vim.cmd("highlight Normal ctermbg=none guibg=none")
		vim.cmd("highlight SignColumn ctermbg=none guibg=none")
	end,
}
