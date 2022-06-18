-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/markiep/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/markiep/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/markiep/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/markiep/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/markiep/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-rg"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/cmp-rg",
    url = "https://github.com/lukas-reineke/cmp-rg"
  },
  ["cmp-tabnine"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  gruvbox = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/gruvbox-community/gruvbox"
  },
  ["gv.vim"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/gv.vim",
    url = "https://github.com/junegunn/gv.vim"
  },
  ["heirline.nvim"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/heirline.nvim",
    url = "https://github.com/rebelot/heirline.nvim"
  },
  indentLine = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/indentLine",
    url = "https://github.com/Yggdroot/indentLine"
  },
  ["lightline-gruvbox.vim"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/lightline-gruvbox.vim",
    url = "https://github.com/shinchu/lightline-gruvbox.vim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/quick-scope",
    url = "https://github.com/unblevable/quick-scope"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim",
    url = "https://github.com/nvim-telescope/telescope-dap.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-brainfuck"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-brainfuck",
    url = "https://github.com/q60/vim-brainfuck"
  },
  ["vim-ccls"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-ccls",
    url = "https://github.com/m-pilia/vim-ccls"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-closetag",
    url = "https://github.com/alvan/vim-closetag"
  },
  ["vim-cool"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-cool",
    url = "https://github.com/romainl/vim-cool"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-dotoo"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-dotoo",
    url = "https://github.com/dhruvasagar/vim-dotoo"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-fswitch"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-fswitch",
    url = "https://github.com/derekwyatt/vim-fswitch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-godot"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-godot",
    url = "https://github.com/habamax/vim-godot"
  },
  ["vim-kitty"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-kitty",
    url = "https://github.com/fladson/vim-kitty"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-markdown",
    url = "https://github.com/plasticboy/vim-markdown"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-signify",
    url = "https://github.com/mhinz/vim-signify"
  },
  ["vim-sneak"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-sneak",
    url = "https://github.com/justinmk/vim-sneak"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/markiep/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
