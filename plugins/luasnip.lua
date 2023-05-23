return {
  plugins = {
    { -- override LuaSnip
      "L3MON4D3/LuaSnip",
      opts = {
        enable_autosnippets = true,
      },
      config = function(plugin, opts)
        require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
        -- opts parameter is the default options table
        require("luasnip.loaders.from_lua").lazy_load { paths = { "./user/snippets" } } -- load snippets paths
      end,
    },
  },
}