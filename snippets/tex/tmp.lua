-- ~~~~~ Tutorial ~~~~~ --
-- https://www.ejmastnak.com/tutorials/vim-latex/luasnip/

-- ~~~~~ Abbreviations used in the LuaSnip docs ~~~~~ --
-- https://github.com/L3MON4D3/LuaSnip/blob/master/DOC.md
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
-- local f = ls.function_node
-- local d= ls.dynamic_node
-- local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
-- local rep = require("luasnip.extras").rep


-- local helpers = require('personal.luasnip-helper-funcs')
-- local get_visual = helpers.get_visual

local line_begin = require("luasnip.extras.expand_conditions").line_begin

-- Math context detection 
local tex = {}
tex.in_mathzone = function() return vim.fn['vimtex#syntax#in_mathzone']() == 1 end
tex.in_text = function() return not tex.in_mathzone() end


return {

  -- Equation, choice for labels
  s({trig="beq", dscr="Expands 'beq' into an equation environment, with a choice for labels", snippetType="autosnippet"},
    fmta(
      [[
        \begin{equation}<>
          <>
        \end{equation}
      ]],
      { c(1,
            {
              sn(2,   -- Choose to specify an equation label
                {
                  t("\\label{eq:"),
                  i(1),
                  t("}"),
                }
              ),
              t([[]]), -- Choose no label
            },
            {}
          ),
        i(2) }
    )
  ),

  -- Figure environment
  s({trig="foofig", dscr="Use 'fig' for figure environmennt, with options"},
    fmta(
      [[
        \begin{figure}<>
          \centering
          \includegraphics<>{<>}
          \caption{<>}
          \label{fig:<>}
        \end{figure}
      ]],
      {
        -- Optional [htbp] field
        c(1,
            {
              t([[]]),      -- Choice 1, empty
              t("[htbp]"),  -- Choice 2, this may be turned into a snippet
            },
            {}
          ),
        -- Options for includegraphics
        c(2,
            {
              t([[]]), -- Choice 1, empty
              sn(3,    -- Choice 2, this may be turned into a snippet
                {
                  t("[width="),
                  i(1),
                  t("\\textwidth]"),
                }
              ),
            },
            {}
        ),
        i(3, "filename"),
        i(4, "text"),
        i(5, "label"),
      }
    ),
    {condition = line_begin}
  ),

}
