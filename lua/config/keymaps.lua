-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }

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

vim.keymap.set("n", "<leader>eq", "<cmd>EditQuery<cr>", {
  desc = "toogle edit query",
})

vim.api.nvim_set_keymap("n", "<leader>sa", "<cmd>T2CShuffleAccents<cr>", { noremap = true, silent = true })

-- Quickly substitute current word
vim.keymap.set(
  "n",
  "<leader>r",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "[S]ubstitute current word" }
)
-- silently delete the currently selected text without affecting the usual yank registers or clipboard.
vim.keymap.set("x", "<leader>p", '"_dP')

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")
