-- TODO 把每个插件的配置做成模块
-- e.g. plugins/nvim-tree
-- TODO 还需要一个适配配置模块的方法

vim.cmd [[packadd packer.nvim]]

require'packer'.startup(function()
    -- packer can manage itself
    use 'wbthomason/packer.nvim'

    -- file explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- file icon
        }
    }
end)