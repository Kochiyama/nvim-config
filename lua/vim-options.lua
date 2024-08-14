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
vim.o.cmdheight = 0
vim.o.termguicolors = true
vim.guicursor = "a:block-blinkwait{150}-blinkon{500}-blinkoff{500}-lCursor"
vim.diagnostic.config({
  update_on_insert = true,
})

-- Keymaps
vim.keymap.set("n", "<leader>sc", ":nohl<CR>", {})
