-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- custom
vim.keymap.set(
  "n",
  "<leader>sp",
  "<cmd>lua require('josh.custom.angular').toggle_between_spec_and_file()<cr>",
  { desc = "Toggle between spec and file" }
)

-- jesting
vim.keymap.set("n", "<leader>ja", vim.cmd.Jest)
vim.keymap.set("n", "<leader>jf", vim.cmd.JestFile)
vim.keymap.set("n", "<leader>js", vim.cmd.JestSingle)
vim.keymap.set("n", "<leader>jc", vim.cmd.JestCoverage)

-- undotree
vim.keymap.set("n", "<leader>fu", vim.cmd.UndotreeToggle)