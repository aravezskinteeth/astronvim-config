-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        -- "asm_lsp",                -- Assembly (GAS/NASM, GO)
        "bashls",                 -- Bash
        "clangd",                 -- C, C++
        "cmake",                  -- Cmake
        "cssls",                  -- CSS
        -- "eslint",                 -- JavaScript and JSX        "gopls",                  -- Go
        "html",                   -- HTML
        "jsonls",                 -- JSON
        -- "jdtls",                  -- Java
        -- "tsserver",               -- JavaScript, Typescript
        "julials",                -- Install julia first 
        -- "kotlin_language_server", -- Kotlin
        "ltex",                   -- Latex
        "lua_ls",                 -- Lua
        "marksman",               -- Markdown
        -- "perlnavigator",          -- Perl
        "pyright",                -- Python
        "r_language_server",      -- R
        -- "sqlls",                  -- SQL
        "taplo",                  -- TOML
        -- "tailwindcss",            -- Tailwind CSS
        -- "volar",                  -- Vue
        "lemminx",                -- XML
        "yamlls",                 -- YAML
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
        "prettier",               -- General Code Formatter in: JavaScript, TypeScript, Flow, JSX, JSON, CSS, SCSS, Less, HTML, Vue, Angular, GraphQL, Markdown, YAML
        "stylua",                 -- Lua
        -- "rustywind",            -- Rust
        "xmlformatter",           --XML
        "yamlfmt",                -- YAML
        -- "sql-formatter",        -- SQL
        "reorder-python-imports", -- Python
        -- "rustfmt"                -- Rust,
        "markdown-toc",           -- Markdown
        "latexindent",            -- Latex
        "jq",                     -- JSON 
        "golines",                -- Go
        "gomodifytags",           -- Go
        "goimports",              -- Go
        "gersemi",                -- cmake formtter
        "goimports-reviser",      -- Go
        "fixjson",                -- JSON
        "cbfmt",                  -- Markdown: Format codblocks
        "blue",                   -- Python code formatter.
        "autopep8",               -- Python code to conform to the PEP 8 style guide
        "beautysh",               -- A Bash beautifier for the masses.
        -- "shellharden",            -- Shell
        "markdownlint",           -- Markdown
        "cmakelang",              -- CMake
        "clang-format",           -- Clang
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
        "python",           -- Python
        "cppdbg",           -- Cpp
        -- "firefox",          -- Firefox
        -- "node2",            -- Node
        "js",               -- JavaScript
        -- "javadbg",          -- Java
        -- "kotlin",           -- Kotlin
        "go-debug-adapter", -- Go
      },
    },
  },
}
