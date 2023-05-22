return {
  -- VImTex configuration
  {
    'lervag/vimtex',
      init = function ()
        vim.g.vimtex_view_method = "zathura"
      end,
      event = "BufRead",
  },
}


