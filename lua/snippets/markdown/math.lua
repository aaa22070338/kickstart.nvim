local ls = require("luasnip")
local parse_snippet = ls.parser.parse_snippet

-- 如果你有共用的 snippet
local shared = require("snippets.shared.math_common")

return vim.tbl_extend("force", shared, {
  parse_snippet({ trig = "mk", name = "Math" }, "$${1:${TM_SELECTED_TEXT}}$"),
  parse_snippet({ trig = "dm", name = "Block Math" }, "$$\n\t${1:${TM_SELECTED_TEXT}}\n$$"),
})
