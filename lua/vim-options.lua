vim.opt.clipboard = "unnamedplus"
vim.opt.wrap = true
vim.opt.scrolloff = 12
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.cul = true
vim.wo.culopt = "number"
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.g.mapleader = " "
vim.o.scl = "yes"
vim.o.cmdheight = 1
vim.o.termguicolors = true
vim.guicursor = "a:block-blinkwait{150}-blinkon{500}-blinkoff{500}-lCursor"
vim.diagnostic.config({
	update_on_insert = true,
})
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	virtual_text = false,
})
vim.o.shortmess = "at"

-- Keymaps
vim.keymap.set("n", "<leader>sc", ":nohl<CR>", { desc = "Search Clear" })
vim.keymap.set(
	"n",
	"<leader>k",
	"<cmd>lua vim.diagnostic.open_float()<CR>",
	{ desc = "Show Hover Info", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<leader>md",
	"<cmd>:MarkdownPreview<CR>",
	{ desc = "Open Markdown Preview", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<leader>mdc",
	"<cmd>:MarkdownPreviewStop<CR>",
	{ desc = "Close Markdown Preview", noremap = true, silent = true }
)
