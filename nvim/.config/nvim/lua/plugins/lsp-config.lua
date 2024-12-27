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
        ensure_installed = { "lua_ls", "html", "marksman", "ltex", "pylyzer" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      -- We need node for Mason to install the language servers
      -- Run yay -S npm for the lines below to work

      lspconfig.lua_ls.setup({})
      lspconfig.html.setup({})
      lspconfig.marksman.setup({})
      lspconfig.ltex.setup({})
      lspconfig.pylyzer.setup({})

      -- keymaps for LSP

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
