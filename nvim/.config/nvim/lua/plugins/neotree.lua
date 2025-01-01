return {
  "nvim-neo-tree/neo-tree.nvim",
  lazy = false,
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal toggle left<CR>", {}) -- Toggles the tree
    vim.keymap.set("n", "<C-m>", ":Neotree buffers reveal toggle left<CR>", {}) -- Toggles the buffer list
  end,
}
