-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        "pyright",
        "pyre",
        "quick-lint-js",
        "r-languageserver",
        "sqlls",
        "yaml-language-server",
        "gopls",
        "ltex-ls",
        "json-lsp",
        "golangci-lint-langserver",
        "cmake-languge-server",
        "cssmodules-language-server",
        "cmake-languge-server",
        "bash-language-server",
        "clangd",
        "css-lsp",
        "html-lsp",
        "lua-language-server",
        "tailwindcss-language-server",
        "typescript-language-server",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    -- Formatters
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "prettier",
        "stylua",
        "rustywind",
        "xmlformatter",
        "yamlfmt",
        "sql-formatter",
        "reorder-python-imports",
        "rustfmt",
        "markdown-toc",
        "latexindent",
        "jq",
        "golines",
        "gomodifytags",
        "goimports",
        "gersemi",
        "goimports-reviser",
        "fixjson",
        "cbfmt",
        "blue",
        "autopep8",
        "beautysh",
        "shellharden",
        "markdownlint",
        "cmakelang",
        "clang-format",
      },
    },
  },
  {
    -- Debbugers DAP
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "python",
        "cpptools",
        "firefox-debug-adapter",
        "node-debug2-adapter",
        "go-debug-adapter",
        "debugpy",
      },
    },
  },
}
