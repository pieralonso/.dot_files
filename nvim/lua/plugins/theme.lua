return {
    'projekt0n/github-nvim-theme',
    name = 'github-theme',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
        require('github-theme').setup({
            options = {
                transparent = true,
                hide_nc_statusline = false,
                hide_end_of_buffer = false,
                inverse = {
                    match_paren = false,
                    visual = false,
                    search = true,
                },
                darken = {
                    sidebars = {
                        enable = false,
                    },
                },
            },
            -- ...
        })

        vim.cmd('colorscheme github_dark_dimmed')
        vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
    end,
}
