return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "html",
          "cssls",
          "jsonls",
          "yamlls",

          "lua_ls",
          "clangd",
          "omnisharp",
          "pylsp",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()

      -- Default configuration for all servers
      vim.lsp.config("*", {
        capabilities = capabilities,
        root_marker = { ".git" },
      })
    end,
  },
}
