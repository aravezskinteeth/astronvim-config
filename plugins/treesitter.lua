-- This is for syntax highlighting
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        -- "bibtex",
        "c",
        "cmake",
        "comment",
        -- "commonlisp",
        "cpp",
        "css",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "go",
        "gomod",
        "gosum",
        "gowork",
        "html",
        "ini",
        -- "java",
        "javascript",
        -- "jq",
        -- "jsdoc",
        "json",
        "julia",
        -- "kotlin",
        "latex",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "perl",
        "python",
        "r",
        "regex",
        -- "rust",
        "sql",
        -- "svelte",
        -- "swift",
        "toml",
        "typescript",
        -- "vue",
        "yaml",
      },

       -- note: the vim regex based highlighting from
       -- quarto-vim / vim-pandoc sets the wrong comment character
       -- for some sections where there is `$` math.
    },
    indent = {
      enable = true,
    },
    incremental_selectio = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ['af'] = '@function.outer',
          ['if'] = '@function.inner',
          ['ac'] = '@class.outer',
          ['ic'] = '@class.inner',
          ['ao'] = '@codechunk.outer',
          ['io'] = '@codechunk.inner',
        },
      },
      move = {
        enable = true,
        set_jumps = true, -- whether to set jumps in the jumplist
        goto_next_start = {
          [']m'] = '@function.outer',
          [']c'] = '@codechunk.inner',
          [']]'] = '@class.outer',
        },
        goto_next_end = {
          [']M'] = '@function.outer',
          [']['] = '@class.outer',
        },
        goto_previous_start = {
          ['[m'] = '@function.outer',
          ['[c'] = '@codechunk.inner',
          ['[['] = '@class.outer',
        },
         goto_previous_end = {
          ['[M'] = '@function.outer',
          ['[]'] = '@class.outer',
        },
      },
    },
  }
}
