local status, saga = pcall(require, 'lspsaga')
if (not status) then
  return
end

saga.setup({
  ui = {
    winblend = 10,
    border = 'rounded',
    colors = {
      normal_bg = '#002b36'
    }
  },
  symbol_in_winbar = {
    enable = false
  }
})

local diagnostic = require("lspsaga.diagnostic")
local opts = {noremap = true, silent = true}
vim.keymap.set('n', 'C-j', 'Lspsaga diagnostic_jump_next<cr>', opts)
vim.keymap.set('n', 'K', 'Lspsaga hover_doc<cr>',  opts)
vim.keymap.set('n', 'gd', 'Lspsaga lsp_finder<cr>',  opts)
vim.keymap.set('n', 'C-k', 'Lspsaga signature_help<cr>',  opts)
vim.keymap.set('n', 'gp', 'Lspsaga preview_definition<cr>',  opts)
vim.keymap.set('n', 'gr', 'Lspsaga rename<cr>',  opts)
