return {
  -- glow config
  {
    "ellisonleao/glow.nvim",
    config = true,
    cmd = "Glow",
    keys = {
      {
        "<leader>Go", "<cmd>:Glow<cr>", desc = "Preview File"
      },
      {
        "<leader>Gc", "<cmd>:Glow!<cr>", desc = "Close Preview"
      }
    },
    -- Load plugin every time you open a file
    event = "User AstroFile",
    require('glow').setup({
      border = "shadow", -- floating window border config
      pager = false,
      width = 80,
      height = 100,
      width_ratio = 0.7, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
      height_ratio = 0.7,
    })
  },
}
