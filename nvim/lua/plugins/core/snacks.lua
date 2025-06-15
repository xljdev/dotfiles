return {
    {
        "folke/snacks.nvim",
        lazy = false,    -- Load immediately since we're using multiple core features
        priority = 1000, -- Ensure it's loaded before others

        opts = {
            indent = { enabled = true },
            input  = { enabled = true }
        }
    }
}
