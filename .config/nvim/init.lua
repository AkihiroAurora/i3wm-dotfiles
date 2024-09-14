require 'core.options' -- Load general options
require 'core.keymaps' -- Load general keymaps
require 'core.snippets' --Load general autocommands

-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
require('lazy').setup {
  require 'plugins.colorscheme',
  require 'plugins.gitsigns',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.autoformat',
  require 'plugins.autocompletion',
  require 'plugins.mini',
  require 'plugins.treesitter',
  require 'plugins.neo-tree',
  require 'plugins.alpha',
  require 'plugins.misc',
}
