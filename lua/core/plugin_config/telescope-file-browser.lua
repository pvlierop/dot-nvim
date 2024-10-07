require('telescope').setup {
    extensions = {
        file_browser = {
            theme = "ivy",
            hijack_netrw = true,
        },
    },
    defaults = {
        mappings = {
            i = {
                -- ['<C-u>'] = false,
                -- ['<C-d>'] = false,
            },
        },
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '--ignore',
            '--hidden'
        },
    },
}
require('telescope').load_extension "file_browser"

vim.keymap.set('n', '<leader>bf', ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true })
