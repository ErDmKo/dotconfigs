require('telescope').load_extension('fzf')

require('telescope').setup {
    defaults = {
        path_display={"smart"} 
    },
    extensions = {
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        }
    }
}

vim.keymap.set('n', '<C-p>', function () 
    require('telescope.builtin').git_files()
end)
vim.keymap.set('n', '<C-s>', function () 
    require('telescope.builtin').live_grep()
end)
