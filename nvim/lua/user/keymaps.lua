local set = vim.keymap.set
local builtin = require('telescope.builtin')

set('n', '\\', ':noh<return>', {})
set('n', '<leader>fb', builtin.buffers, {})
set('n', '<leader>fg', builtin.live_grep, {})
set('n', '<leader>fh', builtin.help_tags, {})
set('n', '<leader>ff', builtin.find_files, {})
