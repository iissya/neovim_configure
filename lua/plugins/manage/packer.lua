-- packer plugins manage 

local M = {}

M.name = 'packer'
M.download_url = 'https://github.com/wbthomason/packer.nvim'
M.download_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

M.install = function()
    local file, err = io.open(M.download_path)

    if file ~= nil then
        return
    end

    vim.fn.system({
        'git',
        'clone',
        '--depth',
        '1',
        M.download_url,
        M.download_path
    })
end

M.load_plugin_config = function(plugins)
    require'packer'.startup(function(use)
        use 'wbthomason/packer.nvim'

        for k, plugin_opt in ipairs(plugins) do
            plugin_opt.install_config[1] = plugin_opt.name
            
            use(plugin_opt.install_config)

            plugin_opt.init()
        end
    end)
end

return M
