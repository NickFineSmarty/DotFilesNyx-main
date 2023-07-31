local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then 
  return 
end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[augroup BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end

nvim_lsp.cssls.setup {
  on_attach = on_attach,
  filetypes = { "css", "scss", "less" },
  cmd = { "vscode-css-language-server", "--stdio" }
}

nvim_lsp.jsonls.setup {
  on_attach = on_attach,
  filetypes = { "json", "jsonc" },
  cmd = { "vscode-json-language-server", "--stdio" }
}

nvim_lsp.html.setup {
  on_attach = on_attach,
  filetypes = { "html" },
  cmd = { "vscode-html-language-server", "--stdio" }
}

nvim_lsp.emmet_language_server.setup{
  on_attach = on_attach,
  filetypes = { "astro", "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug", "sass", "scss", "svelte", "typescriptreact", "vue" },
  cmd = { "emmet-language-server", "--stdio" }
}


nvim_lsp.clangd.setup {
  on_attach = on_attach,
  filetypes = {"c", "cpp", "objc", "objcpp", "cuda", "proto"},
  cmd = { "clangd" }
}

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = {"typescript", "typescriptreact", "javascript", "javascriptreact"},
  cmd = {"typescript-language-server", "--stdio"}
}

nvim_lsp.pyright.setup {
  on_attach = on_attach,
  filetypes = {"python"},
  cmd = {"pyright-langserver", "--stdio"}
}

nvim_lsp.lua_ls.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      },

      workspace = {
        libary = vim.api.nvim_get_runtime_file("", true)
      }
    }
  }
}



