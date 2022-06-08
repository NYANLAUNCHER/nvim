
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
  dofile
})

require("nvim-autopairs.completion.cmp").setup({
  map_cr = false, -- map <CR> on insert mode
  map_complete = true, -- it will auto insert `(` (map_char) after select function or method item
  auto_select = true, -- automatically select the first item
  insert = false, -- use insert confirm behavior instead of replace
  map_char = { -- modifies the function or method delimiter by filetypes
    all = '(',
    tex = '{'
  }
})

local remap = vim.api.nvim_set_keymap
local npairs = require('nvim-autopairs')

-- skip it, if you use another global object
_G.MUtils= {}

MUtils.completion_confirm=function()
  if vim.fn.pumvisible() ~= 0  then
    return npairs.esc("<cr>")
  else
    return npairs.autopairs_cr()
  end
end

local aptoggle = function()
  if require('nvim-autopairs').disable() then
    require('nvim-autopairs').enable()
  end
  if require('nvim-autopairs').enable() then
    require('nvim-autopairs').disable()
  end
end

remap('n' , '<A-p>','aptoggle()', {expr = true , noremap = true})
remap('i' , '<CR>','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})

---- Rules
--local Rule = require('nvim-autopairs.rule')
--local npairs = require('nvim-autopairs')
--
--npairs.add_rule(Rule("$$","$$","tex"))
--
---- you can use some built-in condition
--
--local cond = require('nvim-autopairs.conds')
--print(vim.inspect(cond))
--
--npairs.add_rules({
--  Rule("$", "$",{"tex", "latex"})
--    -- don't add a pair if the next character is %
--    :with_pair(cond.not_after_regex_check("%%"))
--    -- don't add a pair if  the previous character is xxx
--    :with_pair(cond.not_before_regex_check("xxx", 3))
--    -- don't move right when repeat character
--    :with_move(cond.none())
--    -- don't delete if the next character is xx
--    :with_del(cond.not_after_regex_check("xx"))
--    -- disable add newline when press <cr>
--    :with_cr(cond.none())
--  },
--  --it is not working on .vim but it working on another filetype
--  Rule("a","a","-vim")
--)
--
--npairs.add_rules({
--  Rule("$$","$$","tex")
--    :with_pair(function(opts)
--        print(vim.inspect(opts))
--        if opts.line=="aa $$" then
--        -- don't add pair on that line
--          return false
--        end
--    end)
--   }
--)
--
---- you can use regex
----  press u1234 => u1234number
--npairs.add_rules({
--    Rule("u%d%d%d%d$", "number", "lua")
--      :use_regex(true)
--})
--
----  press x1234 => x12341234
--npairs.add_rules({
--    Rule("x%d%d%d%d$", "number", "lua")
--      :use_regex(true)
--      :replace_endpair(function(opts)
--          -- print(vim.inspect(opts))
--          return opts.prev_char:sub(#opts.prev_char - 3,#opts.prev_char)
--      end)
--})
--
---- you can do anything with regex +special key
---- example press tab will upper text
---- press b1234s<tab> => B1234S1234S
--
--npairs.add_rules({
--  Rule("b%d%d%d%d%w$", "", "vim")
--    :use_regex(true,"<tab>")
--    :replace_endpair(function(opts)
--          return
--              opts.prev_char:sub(#opts.prev_char - 4,#opts.prev_char)
--              .."<esc>viwU"
--    end)
--})
--
---- you can exclude filetypes
--npairs.add_rule(
--  Rule("$$","$$")
--    :with_pair(cond.not_filetypes({"lua"}))
--)
