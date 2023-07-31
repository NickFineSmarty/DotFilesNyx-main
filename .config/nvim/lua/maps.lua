-- Plus/ Minus
vim.keymap.set('n', '+', '<C-a>')
vim.keymap.set('n', '_', '<C-x>')

-- Delete Word
vim.keymap.set('n', 'nn', 'vb"_d')

-- Select All
vim.keymap.set('n', 'ss', 'gg<S-v>G')

-- Tabs
vim.keymap.set('n', 'tt', ':tabedit<Return>', { silent = true })

-- Splits
vim.keymap.set('n', '-', ':split<Return><C-w>w')
vim.keymap.set('n', '|', ':vsplit<Return><C-w>w')

-- Terminal
vim.keymap.set('n', 'cc', ':ToggleTerm direction=vertical size=20<CR>')
