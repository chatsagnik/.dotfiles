local colorscheme = "onedarker"

-- Using protected calls for error handling
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)   
-- The .. operator is for concatenation

if not status_ok then       -- handle missing colorschemes
    vim.notify("colorscheme " .. colorscheme .. " not found")
    vim.cmd "colorscheme darkblue"
    return
end
