return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        -- null_ls.builtins.formatting.biome,
      },
      -- on_attach = function(client, bufnr)
      --   if client.supports_method("textDocument/formatting") then
      --     vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      --     vim.api.nvim_create_autocmd("BufWritePre", {
      --       group = augroup,
      --       buffer = bufnr,
      --       callback = function()
      --         vim.lsp.buf.format({ async = true })
      --       end,
      --     })
      --   end
      -- end,
    })
  end,
}
