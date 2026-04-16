-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_create_user_command("ThemeToggle", function()
  require("config.theme-toggle").toggle()
end, {})

-- optional keybind like NvChad
vim.keymap.set("n", "<leader>th", function()
  require("config.theme-toggle").toggle()
end, { desc = "Toggle Theme" })
