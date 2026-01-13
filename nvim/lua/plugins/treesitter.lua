return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local ts = require("nvim-treesitter")

            -- 1. Setup the plugin (basic config)
            ts.setup({
                -- You can leave this empty for default paths
            })

            -- 2. Install the C parser
            -- This is the API mentioned in your docs
            ts.install({ "c", "lua", "vim", "vimdoc", "query" })

            -- 3. Enable Highlighting and Indent
            -- The new version prefers using Neovim's built-in treesitter commands
            vim.api.nvim_create_autocmd("FileType", {
                pattern = { "c", "lua", "vim", "vimdoc", "query" },
                callback = function()
                    vim.treesitter.start() -- This enables highlighting
                    -- This enables the treesitter-based indentation
                    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end,
            })
        end,
    },
}
