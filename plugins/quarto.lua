return {
  {
    'quarto-dev/quarto-nvim',
    dependencies = {
      {
        'jmbuhr/otter.nvim',
        dev = false,
        config = function ()
          require 'otter.config'.setup{
            lsp = {
              hover = {
                border = require 'misc.style'.border
              }
            }
          }
        end,
      },
      'neovim/nvim-lspconfig',
      'hrsh7th/nvim-cmp'
    },
    config = function ()
      require 'quarto'.setup {
        debug = false,
        closePreviewOnExit = true,
        lspFeatures = {
          enabled = true,
          languages = {
            'r',
            'python',
            'julia',
            'bash',
            'lua'
          },
          chunks = 'curly', -- 'curly' or 'all'
          diagnostics = {
            enabled = true,
            triggers = {
              "BufWritePost"
            }
          },
          completion = {
            enabled = true,
          },
        },
        keymap = {
          hover = 'K',
          definition = 'gd'
        }
      }
    end,
    event = "User AstroFile",
    keys = {
      {
        "<leader>Qp", "<cmd>:lua require'quarto'.quartoPreview()<cr>", desc = "Preview Files"
      },
      {
        "<leader>Qc", "<cmd>:lua require'quarto'.quartoClosePreview()<cr>", desc = "Close Preview"
      },
      {
        "<leader>Qh", "<cmd>:QuartoHelp<cr>", desc = "Help"
      },
      {
        "<leader>Qa", "<cmd>:QuartoActivate<cr>", desc = "Activate"
      },
      {
        "<leader>Qd", "<cmd>:QuartoDiagnostics<cr>", desc = "Diagnostics"
      },
      {
        "<leader>QK", "<cmd>:QuartoHover<cr>", desc = "Hover"
      },
      {
        "<leader>Qsa", "<cmd>:QuartoSendAbove<cr>", desc = "Send Above"
      },
      {
        "<leader>QsA", "<cmd>:QuartoSendAll<cr>", desc = "Send All"
      }
    }
  },
  { 'nvim-treesitter/nvim-treesitter' },
  -- send code from python/r/qmd documents to a terminal like ipython, R, bash
  { 'jpalardy/vim-slime' },
  -- paste an image to markdown from clipboard
  -- with :PasteImg,
  'ekickx/clipboard-image.nvim',
}
