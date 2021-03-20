local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- keybind list
map("", "<leader>c", '"+y')

-- open terminals  
-- map("n", "<C-b>" , [[<Cmd> vnew term://bash<CR>]] , opt) -- split term vertically , over the right  
map("n", "<C-x>" , [[<Cmd> split term://zsh | resize 10 <CR>]] , opt) -- split term vertically , over the right  

map("n", "<leader>gn", [[<Cmd> bn <CR>]], opt) -- buffer next
map("n", "<leader>gp", [[<Cmd> bp <CR>]], opt) -- buffer previous
map("n", "<leader>gd", [[<Cmd> bd <CR>]], opt) -- buffer delete
