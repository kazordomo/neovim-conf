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

map("n", "gh", "0")
map("n", "gl", "g_")

-- LazyGit
map("n", "<leader>lg", ":LazyGit<CR>", {silent = true})

-- Telescope
map("n", "<leader>ff", [[<cmd>Telescope git_files<CR>]], { silent = true})
map("n", "<leader>fo", [[<cmd>Telescope find_files<CR>]], { silent = true})
map("n", "<leader>fg", [[<cmd>Telescope live_grep<CR>]], { silent = true})
map("n", "<leader>fb", [[<cmd>Telescope buffers<CR>]], { silent = true})

-- NerdTree
map("n", "<leader>v", ":NERDTreeToggle<CR>", {silent = true})

-- DAP debugger
map("n", "<leader>bp", ":lua require'dap'.toggle_breakpoint()<CR>", {silent = true})
map("n", "<leader>bc", ":lua require'dap'.continue()<CR>", {silent = true})
map("n", "<leader>bo", ":lua require'dap'.step_over()<CR>", {silent = true})
map("n", "<leader>bi", ":lua require'dap'.step_into()<CR>", {silent = true})
map("n", "<leader>br", ":lua require'dap'.repl.open()<CR>", {silent = true})
