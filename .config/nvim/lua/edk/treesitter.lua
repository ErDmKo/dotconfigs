require'nvim-treesitter.configs'.setup {
    sync_install = false,
    auto_install = true,
    ensure_installed = {"lua", "typescript"},

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
