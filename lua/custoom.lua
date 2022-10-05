-- Additions own

vim.cmd [[
  augroup filetypedetect
      autocmd BufRead,BufNewFile Jenkinsfile set filetype=groovy
  augroup END
]]


vim.o.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

vim.o.laststatus =3

vim.o.splitbelow = true                        -- force all horizontal splits to go below current window
vim.o.splitright = true                        -- force all vertical splits to go to the right of current window
vim.o.cursorline = true
vim.o.relativenumber = true                  -- set relative numbered lines
vim.o.spell = false
vim.o.spelllang="nl,en_us"
vim.o.title = true

vim.g['netrw_keepdir'] = 1
vim.g['netrw_banner'] = 0

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
local term_opts = { silent = true }

-- Terminal --
keymap("t", "<C-Esc>", "<C-\\><C-n>", term_opts)

keymap('n', '<leader>f', ':Lex 30<cr>', opts)

-- Resize with arrows
-- keymap("n", "<C-j>", ":resize -2<CR>", opts)
-- keymap("n", "<C-k>", ":resize +2<CR>", opts)
-- keymap("n", "<C-l>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<C-h>", ":vertical resize +2<CR>", opts)

-- nnoremap <silent> <C-Up> :resize +3<CR>
-- nnoremap <silent> <C-Down> :resize -3<CR>
-- nnoremap <silent> <C-Left> :vertical resize +2<CR>
-- nnoremap <silent> <C-Right> :vertical resize -2<CR>
--

keymap("n", "<S-b>", ":resize -2<CR>", opts)
keymap("n", "<S-n>", ":resize +2<CR>", opts)
keymap("n", "<S-v>", ":vertical resize +2<CR>", opts)
keymap("n", "<S-m>", ":vertical resize -2<CR>", opts)

--require('nvim-lsp-installer').setup {
--  ensure_installed = 'terraformls',
--}

--require'lspconfig'.terraformls.setup{}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'onedark',
    component_separators = '|',
    section_separators = '',
  },
}
--- End Additions of my own
