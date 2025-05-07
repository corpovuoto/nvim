function getOS()
    return package.config:sub(1,1) == "\\" and "win" or "unix"
end
vim.keymap.set("n", "<leader>sb", ":lua ShowBinds()<CR>", {})

