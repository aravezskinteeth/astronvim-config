return {
  {
    'quarto-dev/quarto-nvim',
    dependencies = {
      'jmbuhr/otter.nvim',
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
    end
  },
  -- send code from python/r/qmd documents to a terminal like ipython, R, bash
  { 'jpalardy/vim-slime' },
  -- paste an image to markdown from clipboard
  -- with :PasteImg,
  'ekickx/clipboard-image.nvim',
}
