vim.g.mapleader = " ";

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("i", "kj", "<esc>")

map("n", "<C-h>", "<C-w><C-h>")
map("n", "<C-j>", "<C-w><C-j>")
map("n", "<C-k>", "<C-w><C-k>")
map("n", "<C-l>", "<C-w><C-l>")

-- LazyGit
map("n", "<leader>lg", ":LazyGit<CR>", {silent = true})

-- Telescope
map("n", "<leader>f", [[<cmd>Telescope git_files<CR>]], { silent = true})
map("n", "<leader>F", [[<cmd>Telescope find_files<CR>]], { silent = true})

-- NerdTree
map("n", "<leader>b", ":NERDTreeToggle<CR>", {silent = true})
