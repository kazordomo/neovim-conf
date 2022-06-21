vim.g.mapleader = " ";

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- map ctrl + vim move keys to move between splits/panes
for _, i in ipairs({"h", "j", "k", "l"}) do
    map("n", "<c-" .. i .. ">", ":wincmd " .. i .."<CR>", {silent = true})
end

map("i", "kj", "<esc>")
map("n", "<leader>o", "o<esc>^Da")
map("n", "<leader>O", "O<esc>^Da")

-- LazyGit
map("n", "<leader>gg", ":LazyGit<CR>", {silent = true})

-- Telescope
map("n", "<c-p>", [[<cmd>Telescope git_files<CR>]], { silent = true})
map("n", "<leader><c-p>", [[<cmd>Telescope find_files<CR>]], { silent = true})

-- NerdTree
map("n", "<c-b>", ":NERDTreeToggle<CR>", {silent = true})
