local vim = vim--get rid of linting errors

-- Create keymap(s)
-- if only modes and|or lhs are occupied then
-- modes = {{modes, lhs, rhs, opt}, ...}
-- and lhs = a table of opts to apply globally
function map(modes, lhs, rhs, opt)
  local opts = { noremap = true }
  if opt then
    opts = vim.tbl_extend("force", opts, opt)
  end

  -- Make multiple keymaps
  if (rhs == nil and type(modes) == "table") then
    if lhs then
      opts = vim.tbl_extend("force", opts, lhs)
    end
    local keymaps = modes

    -- itterate through the keymaps
    for _, keymap in ipairs(keymaps) do
      local keyopts = opts
      table.insert(keyopts, keymap[4])
      vim.api.nvim_set_keymap(keymap[1], keymap[2], keymap[3], keyopts)
    end
  else

  -- Only make one keymap
  if (type(modes) == "table") then
    for _, mode in ipairs(modes) do
      vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
    end
  elseif (type(modes) == "string") then
      vim.api.nvim_set_keymap(modes, lhs, rhs, opts)
  end

  end
end

