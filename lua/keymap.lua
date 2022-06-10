
-- let lhs and rhs take in table
-- and itterate through this table
function map(modes, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  if(type(modes) == "table") then
    for _, mode in ipairs(modes) do
      vim.api.nvim_set_keymap(mode, lhs, rhs, options)
    end
  elseif(type(modes) == "string") then
      vim.api.nvim_set_keymap(modes, lhs, rhs, options)
  else
    print("map() only accepts strings or tables")
  end
end
