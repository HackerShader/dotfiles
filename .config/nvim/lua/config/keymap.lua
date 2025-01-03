local opts = { noremap = true, silent = true }
local builtin = require('telescope.builtin')
local keymap = vim.api.nvim_set_keymap

---Utils/NvimTree
keymap('n', "<C-b>", ":NvimTreeToggle<CR>", opts)

---Utils/Telescope
keymap('n', 'tf', ":Telescope find_files<CR>", {})
keymap('n', 'tb', ":Telescope buffers<CR>", {})

---Line navigation
    --Normal mode
    keymap("n", "<A-j>", "<Esc>:m .+1<CR>", opts)
    keymap("n", "<A-k>", "<Esc>:m .-2<CR>", opts)

    --Insert mode
    keymap("i", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
    keymap("i", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)

--Compiler for competitive programming
    keymap("n", "cr", "<Esc>:terminal g++ -o main main.cpp && echo Compiled && ./main<CR>", opts)

