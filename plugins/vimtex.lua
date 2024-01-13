return {
  -- VImTex configuration
  {
    'lervag/vimtex',
    init = function ()
      vim.g.tex_flavor = 'latex'
      vim.g.vimtex_view_method = 'sioyek'
      vim.g.vimtex_quickfix_mode = 0
    end,
    keys = {
      {
        "<leader>Vh", "<cmd>:help vimtex-default-mappings<cr>", desc = "VimTex Help"
      },
      {
        "<leader>Vo", "<cmd>:VimtexTocOpen<cr>", desc = "VimTex: Open Table of Contents"
      },
      {
        "<leader>Vt", "<cmd>:VimtexTocToggle<cr>", desc = "VimTex: Toggle Table of Contents"
      },
      {
        "<leader>Vc", "<cmd>:VimtexCompile<cr>", desc = "VimTex: Compile PDF"
      },
    },
    event = "BufRead",
  },
}


