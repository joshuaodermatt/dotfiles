vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

--  § as <ESC> in all modes
vim.keymap.set({ "i", "v", "s" }, "§", "<Esc>", { noremap = true })


-- netrw
vim.keymap.set("n", "<leader>e", function()
    if vim.bo.filetype == "netrw" then
        vim.cmd("bd")
    else
        vim.cmd("Ex")
    end
end, { desc = "Toggle netrw" })

-- line number setting
vim.keymap.set("n", "<leader>m", function()
    vim.opt.relativenumber = not vim.opt.relativenumber:get()
end, { desc = "Toggle relative line numbers" })
