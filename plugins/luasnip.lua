return {
  plugins = {
    { -- override LuaSnip
    "L3MON4D3/LuaSnip",
    -- override the options table that is used in the `require "plugins.configs.luasnip"` call
    opts = function(_, opts)
      -- opts parameter is the default options table
      -- the function is lazy loaded so LuaSnip is able to be required
      local ls = require"luasnip"
      ls.config.set_config({
        -- Don't store snippet history for less overhead
        history = false,
        -- Allow autotrigger snippets
        enable_autosnippets = true,
         -- For equivalent of UltiSnips visual selection
        store_selection_keys = "<Tab>",
         -- Event on which to check for exiting a snippet's region
        region_check_events = 'InsertEnter',
        delete_check_events = 'InsertLeave',
      })
      require("luasnip.loaders.from_lua").load({
          paths = "~/.config/nvim/lua/user/snippets/"
        })
      -- return the new table to be used
      return opts
    end,
    }
  }
}
