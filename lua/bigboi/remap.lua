vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>wq", vim.cmd.wq)

-- my tmux prefix is <C-w> so I had to move my nvim prefix to <C-s>
vim.keymap.set("n", "<C-s>", "<C-w>")

-- move selected lines around 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

-- <C-d> and <C-u> do smooth scrolling while their shifted version does jumps
vim.keymap.set("n", "<C-S-d>", "<C-d>zz")
vim.keymap.set("n", "<C-S-u>", "<C-u>zz")

-- Keep the cursor at the middle of the screen when jumping to matches
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste over stuff without losing your yanked stuff
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Delete without losing your yanked stuff
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>D", "\"_D")
vim.keymap.set("v", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>D", "\"_D")

-- thank you
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- funny dumb replace-all for the word under the cursor
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- make the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

