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
    keys = {
      {
        "<leader>Mp", "<cmd>:MardownPreview<cr>", desc = "Preview"
      },
      {
        "<leader>Ms", "<cmd>:MardownPreviewStop<cr>", desc = "Stop Preview"
      }
    },
    event = "User AstroFile",
  }
}
