-- lua/custom/plugins/mini.lua
return {
    {
        'echasnovski/mini.nvim',
	      enabled = true,
        event = "VeryLazy",
        config = function()
            local statusline = require 'mini.statusline'
            statusline.setup { use_icons = true }
        end
    },
}
