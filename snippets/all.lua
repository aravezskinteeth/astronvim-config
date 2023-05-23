-- ~~~~~ Tutorial ~~~~~ --
-- https://www.ejmastnak.com/tutorials/vim-latex/luasnip/

-- ~~~~~ Abbreviations used in the LuaSnip docs ~~~~~ --
local ls = require("luasnip")
local s = ls.snippet
-- local sn = ls.snippet_node
local t = ls.text_node
-- local i = ls.insert_node
-- local f = ls.function_node
-- local d= ls.dynamic_node
-- local fmt = require("luasnip.extras.fmt").fmt
-- local fmta = require("luasnip.extras.fmt").fmta
-- local rep = require("luasnip.extras").rep

-- ~~~~~ The actual hello world snippet ~~~~~ --
return {
-- A simple "Hello, world!" text node
s(
  {trig = "hi"}, -- Table of snippet parameters
  { -- Table of snippet nodes
    t("Hello, world!")
  }
),
}

