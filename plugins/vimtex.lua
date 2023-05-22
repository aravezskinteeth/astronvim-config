return {
  -- VImTex configuration
  {
    'lervag/vimtex',
      init = function ()
        vim.g.vimtex_view_general_viewer = "skim"
      end,
      event = "BufRead",
  },
}


