return {
  plugins = {
    { -- override LuaSnip
      "L3MON4D3/LuaSnip",
      opts = {
        history = false,
        enable_autosnippets = true,
        store_selection_keys = "<Tab>",
        region_check_events = 'InsertEnter',
        delete_check_event = 'InsertLeave',
      },
      config = function(plugin, opts)
        require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
        -- opts parameter is the default options table
        require("luasnip.loaders.from_lua").lazy_load { paths = { "~/.config/nvim/lua/user/snippets" } } -- load snippets paths
      end,
    },
  },
}
