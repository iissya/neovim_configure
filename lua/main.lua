-- main

local M = {}

function M.setup(config)
    config = config or {}

    vim.g.mapleader = ';'

    require('keymapping')
end

return M