-- must be set before calling require
require('nvim-tree').setup {}

vim.api.nvim_set_keymap('n', '<Leader>n', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
