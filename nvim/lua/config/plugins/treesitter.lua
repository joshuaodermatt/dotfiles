require("nvim-treesitter.configs").setup({
    auto_install = true,

    ensure_installed = {
        'c',
        'lua'
    },

    highlight = {
        enable = true,
    },
})
