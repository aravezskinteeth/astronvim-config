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
    -- cmd = {"QuartoPreview"},
    keys = {
      {
        "<leader>Qp", "<cmd>:lua require'quarto'.quartoPreview()<cr>", desc = "Preview Quarto Files"
      },
      {
        "<leader>Qc", "<cmd>:lua require'quarto'.quartoClosePreview()<cr>", desc = "Close Quarto Preview"
      },
      {
        "<leader>Qh", ":QuartoHelp", desc = "Quarto Help"
      }
    }
  },
  -- send code from python/r/qmd documents to a terminal like ipython, R, bash
  { 'jpalardy/vim-slime' },
  -- paste an image to markdown from clipboard
  -- with :PasteImg,
  'ekickx/clipboard-image.nvim',
}
