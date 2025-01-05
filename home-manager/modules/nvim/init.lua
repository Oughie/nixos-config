local home = os.getenv 'HOME'
package.path = package.path .. ';' .. home .. '/Configuration/home-manager/modules/nvim/lua/?.lua'
vim.opt.runtimepath:append(home .. '/Configuration/home-manager/modules/nvim/')

require 'user.options'
require 'user.lazy'
require 'user.mappings'
