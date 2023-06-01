-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = { -- normal mode
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quarto menu
    ["<leader>Q"] = { name = "󱨋 Quarto" },
    -- quarto send
    ["<leader>Qs"] = { name = "󱓵 Quarto Send" },
    -- glow
    ["<leader>G"] = { name = " Glow" },
    -- markdown preview
    ["<leader>M"] = { name = "󰍔 Markdown Preview" },
    -- vimtex
    ["<leader>V"] = { name = "󰿈 VimTex" },
    ["<leader>O"] = { name = "󰇈 Obsidian"},
    ["<leader>Ol"] = { name = "󰮊 Obsidian Link" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- quit
    -- Example
    -- ["<leader>a"] = { "<cmd>echo 'Hello world!'<cr>", desc = "Say hello world" },
  },
  t = { -- terminal mode
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = { -- visual mode

  }
}
