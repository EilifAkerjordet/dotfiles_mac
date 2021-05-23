local fn = vim.fn
-- Auto install packer.nvim
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.isdirectory(install_path) == 0 then
  fn.system({ 'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path })
  require('config.@@@plugins-setup')
  vim.cmd 'autocmd User PackerComplete ++once lua require("config")'
  require('packer').sync()
else
  require('config')
end
