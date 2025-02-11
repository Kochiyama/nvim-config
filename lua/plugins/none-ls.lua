return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    local biome = null_ls.builtins.formatting.biome.with({
      command = "biome",
      args = { "check", "--fix", "--unsafe", "--stdin-file-path", "$FILENAME" },
    })

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        biome,
      },
      on_attach = function(client, bufnr)
        local function format()
          if vim.fn.filereadable("biome.json") == 1 then
            vim.lsp.buf.format({ name = "biome" })
          else
            if vim.fn.filereadable(".prettierrc") == 1 then
              vim.lsp.buf.format({ name = "prettier" })
            else
              vim.lsp.buf.format({ async = true })
            end
          end
        end

        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = format,
          })
        end
      end,
    })
  end,
}
