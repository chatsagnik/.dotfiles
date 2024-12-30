return {
	"EdenEast/nightfox.nvim",
	lazy = false, -- turn off lazy loading for colorschemes
	priority = 999, -- default priority is 50
	config = function()
		vim.cmd('colorscheme nightfox')
	end
}
