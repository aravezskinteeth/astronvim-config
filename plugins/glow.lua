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
   },
}
