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

    ["<esc>"] = { "<cmd>noh<cr>", desc = "Remove search highlight"},
    ["<c-LeftMouse>"] = { '<cmd>lua vim.lsp.buf.definition()<cr>', desc = "Go to Deinition"},
    ["<c-q>"] = { '<cmd>q<cr>', desc = "Close buffer" },
    ["n"] = { "nzzzv", desc = "Center search" },
    ["gN"] = { "Nzzzv", desc = "Center search " },
    ["gl"] = { '<c-]>', desc = 'Open help link' },
    ['gf'] = { ':e <cfile><CR>', desc = 'Edit file' },

    -- code chunks
    ['coo'] = { 'o# %%<cr>', desc = 'new code chunk below' },
    ['cOo'] = { 'O# %%<cr>', desc = 'new code chunk above' },
    ['cob'] = { 'o```{bash}<cr>```<esc>O', desc = "bash code chunk" },
    ['cor'] = { 'o```{r}<cr>```<esc>O', desc = "r code chunk" },
    ['cop'] = { 'o```{python}<cr>```<esc>O', desc = "python code chunk" },
    ['coj'] = { 'o```{julia}<cr>```<esc>O', desc = "julia code chunk" },

    -- send code with ctrl+Enter
    -- just like in e.g. RStudio
    -- needs kitty (or other terminal) config:
    -- map shift+enter send_text all \x1b[13;2u
    -- map ctrl+enter send_text all \x1b[13;5u
    ["<c-cr>"] = { "<Plug>SlimeSendCell", desc = 'Send code' },
    ["<s-cr>"] = { "<Plug>SlimeSendCell", desc = 'Send code' },
    -- send code with Enter and leader Enter
    ["<cr>"] = { "<Plug>SlimeRegionSend", desc = 'Send code with Enter'},


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
    ["<leader>Z"] = { name = " Code" },

  },
  t = { -- terminal mode
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = { -- visual mode
    -- send code with Enter and leader Enter
    ["<leader><cr>"] = { "<Plug>SlimeRegionSend", desc = 'Send code with Enter'},
    -- keep selection after indent/dedent
    ["<leader>>"] = {">gv", desc = 'Keep sellection after indent'},
    ["<leader><"] = {"<gv", desc = 'Keep sellecton after dedent'},

    -- where <80><fd>h is the cmd key 
    ['<80><fd>h-j>'] = { ":m'>+<cr>`<my`>mzgv`yo`z", desc = 'move line down' },
    ['<80><fd>h-k>'] = { ":m'<-2<cr>`>my`<mzgv`yo`z", desc = 'move line up' },
    ['<leader>.'] = { ':norm .<cr>', desc = 'repat last normal mode command' },
    ['q'] = { ':norm @q<cr>', desc = 'repat q macro' },
    ['p'] = { '"_dP', desc = 'replace without overwriting reg' },
  },
  i = { -- insert mode
    -- send code with ctrl+Enter
    -- just like in e.g. RStudio
    -- needs kitty (or other terminal) config:
    -- map shift+enter send_text all \x1b[13;2u
    -- map ctrl+enter send_text all \x1b[13;5u
    ["<c-cr>"] = { "<esc><Plug>SlimeSendCell<cr>i", desc = "Send code with ctrl and enter" },
    ["<s-cr>"] = { "<esc><Plug>SlimeSendCell<cr>i", desc = "Send code with shift and enter" },
    ['<s-r>'] = { '```{r}<cr>```<esc>O', desc = "r code chunk" },
    ['<s-p>'] = { '<esc>o```{python}<cr>```<esc>O', desc = "python code chunk" },
    ['<s-b>'] = { 'o```{bash}<cr>```<esc>O', desc = "bash code chunk" },
    ['<s-j>'] = { 'o```{julia}<cr>```<esc>O', desc = "julia code chunk" },
  },
}
