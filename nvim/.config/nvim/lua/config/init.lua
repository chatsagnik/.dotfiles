-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- If lazy is not installed then using git clone the latest stable branch of lazy 
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- call global variables
require('config.options')
require('config.globals')

-- Set our options

local opts = {
	defaults = {
		lazy = true, -- Plugins are lazy-loaded by default unless indicated otherwise 
	},
	install = {
		colorscheme = { "nightfox" }
	},
	rtp = {
		disabled_plugins = {
			"gzip",
			"matchit",
			"matchparen",
			"netrwPlugin",
			"tarPlugin",
			"tohtml",
			"tutor",
			"zipPlugin",
		}
	},
	change_detection = {
		notify = true, -- turn this off if you do not want to be notified
	},

}

-- Setup lazy.nvim
require("lazy").setup('plugins', opts) -- the opts table is defined above
