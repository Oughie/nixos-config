package.path = package.path .. ';/home/luma/Configuration/home-manager/modules/nvim/lua/?.lua'
vim.opt.runtimepath:append '/home/luma/Configuration/home-manager/modules/nvim/'

require 'user.options'
require 'user.lazy'
require 'user.mappings'
