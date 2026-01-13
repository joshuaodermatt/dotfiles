return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    config = function()
        require("config.plugins.harpoon")
    end,
    dependencies = { "nvim-lua/plenary.nvim" }
}
