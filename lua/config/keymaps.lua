vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Info" })
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, { desc = "Code Actions" })
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
vim.keymap.set("n", "<leader>z", "za", { noremap = true, silent = true, desc = "Toggle Fold" })
