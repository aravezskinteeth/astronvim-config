return (
  {
    'quarto-dev/quarto-nvim',
    dependencies = {
      {
        'jmbuhr/otter.nvim',
        dev = false,
        config = function ()
          require 'otter.config'.setup {
            lsp = {
              hover = {
                border = require 'misc.style'.border
              }
            }
          }
        end,
      },
      {
        'neovim/nvim-lspconfig'
      },
      {
        'hrsh7th/nvim-cmp'
      },
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
        },
      }
    end
  }
)
