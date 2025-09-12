return {
	"nvim-mini/mini.nvim",
	version = false,
	config = function()
		require("mini.comment").setup()
		require("mini.pairs").setup()
		require("mini.surround").setup()
		require("mini.extra").setup()
		-- require("mini.animate").setup()
		require("mini.hipatterns").setup({
			highlighters = {
				-- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
				fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
				hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
				todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
				note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },

				-- Highlight hex color strings (``) using that color
				hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
			},
		})
		-- require("mini.notify").setup()
		require("mini.icons").setup()
		MiniIcons.mock_nvim_web_devicons()
	end,
}
