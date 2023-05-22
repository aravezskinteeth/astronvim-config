return {
  -- Mardown preview in your browser!
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function ()
      vim.g.mkdp_filetypes = {
        "markdown"
      }
    end,
    ft = {
      "markdown"
    },
    event = "User AstroFile",
  }
}
