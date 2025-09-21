return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim" },
  config = function()
    local mason_lsp = require("mason-lspconfig")

    mason_lsp.setup({
      ensure_installed = {
        -- Java tools
        "jdtls",         -- Java LSP server
      },
      automatic_installation = true,
    })
  end,
}

