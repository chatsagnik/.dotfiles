-- Loads our config file stored at ~/.config/nvim/lua/config/lazy.lua
require("config.options")
require("config.lazy")

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins folder
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
