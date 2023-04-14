-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "asm_lsp", -- Assembly (GAS/NASM, GO)
        "bashls", -- Bash
        "clangd", -- C, C++
        "csharp_ls", -- C#
        "cmake", -- Cmake
        "cssls", -- CSS
        "cssmodules_ls", -- CSS
        "diagnosticls", -- Diagnostic (general purpose server)
        "eslint", -- ESLint
        "golangci_lint_ls", -- Go
        "gopls", -- Go
        "html", -- HTML
        "jsonls", -- JSON
        "jdtls", -- Java
        "quick_lint_js", -- JavaScript
        "tsserver", -- JavaScript, Typescript
        "vtsls", -- JavaScript, Typescript
        -- "julials", -- Julia (needs extra config)
        "kotlin_language_server", -- Kotlin
        "ltex", -- Latex
        "texlab", -- Latex
        "lua_ls", -- Lua
        "luau_lsp", -- Lua
        "marksman", -- Markdown
        "perlnavigator", -- Perl
        "pyright", -- Python
        "r_language_server", -- R
        "sqlls", -- SQL
        "taplo", -- TOML
        "tailwindcss", -- Tailwind CSS
        "volar", -- Vue
        "lemminx", -- XML
        "yamlls", -- YAML
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
        -- "debugpy", -- Python
        "python", -- Python
        "cppdbg", -- Cpp
        -- "cpptools", -- Cpp
        "firefox", -- Firefox
        -- "firefox-debug-adapter", -- Firefox
        "node2", -- Node
        -- "node-debug2-adapter", -- Node
        "js", -- JavaScript
        -- "js-debug-adapter", -- JavaScript
        "javadbg", -- Java
        -- "java-debug-adapter", -- Java
        "kotlin", -- Kotlin
        -- "kotlin-debug-adapter", -- Kotlin
        "go-debug-adapter", -- Go
      },
    },
  },
}
