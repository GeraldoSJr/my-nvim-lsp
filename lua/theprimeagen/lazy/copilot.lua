return {
    -- GitHub Copilot plugin
    {
        "github/copilot.vim",
        branch = "release",  -- Use the stable release branch
        config = function()
            -- Disable default tab mapping for Copilot and set custom keybinding
            vim.g.copilot_no_tab_map = true
            vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
            vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Next()', { silent = true, expr = true })
            vim.api.nvim_set_keymap("i", "<C-h>", 'copilot#Previous()', { silent = true, expr = true })
            vim.api.nvim_set_keymap("i", "<C-k>", 'copilot#Dismiss()', { silent = true, expr = true })
            vim.api.nvim_set_keymap("i", "<C-space>a", 'copilot#Complete()', { silent = true, expr = true })
        end,
    },
}

