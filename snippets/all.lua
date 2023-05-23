-- ~~~~~ Tutorial ~~~~~ --
-- https://www.ejmastnak.com/tutorials/vim-latex/luasnip/

-- ~~~~~ Abbreviations used in the LuaSnip docs ~~~~~ --
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node


return {
  s({ trig = "trig", snippetType = "autosnippet" }, t "loaded!!"),
}
