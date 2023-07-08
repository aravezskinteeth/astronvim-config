return {
  {
    'akinsho/git-conflict.nvim', version = "*",
    config = true,
    default_mappings = false, -- disable buffer local mapping created by this plugin
    default_commands = true, -- disable commands created by this plugin
    disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
    highlights = { -- They must have background color, otherwise the default color will be used
    incoming = 'DiffAdd',
    current = 'DiffText',
    keys = {
        {
          "<leader>xo", "<Plug>(git-conflict-ours)", desc = "Choose ours"
        },
        {
          "<leader>xt", "<Plug>(git-conflict-theirs)", desc = "Choose theirs"
        },
        {
          "<leader>xb", "<Plug>(git-conflict-both)", desc = "Choose both"
        },
        {
          "<leader>x0", "<Plug>(git-conflict-none)", desc = "Choose none"
        },
        {
          "<leader>xn", "<Plug>(git-conflict-next-conflict)", desc = "Move to previous conflict"
        },
        {
          "<leader>xp", "<Plug>(git-conflict-prev-conflict)", desc = "Move to next conflict"
        }
      }
    },
  }
}
