return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'onsails/lspkind.nvim',
    'nvimdev/lspsaga.nvim',
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup({
      ensure_installed = { 'lua_ls', 'pyright', 'ts_ls' },
      handlers = {
        function(server_name)
          require('lspconfig')[server_name].setup({})
        end,
      },
    })

    require('lspsaga').setup({
      finder_action_keys = {
        toggle_or_open = '<CR>',
        quit = 'q',
      },
      border_format = "single",
    })

    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(ev)
        local opts = { buffer = ev.buf }
        
        vim.keymap.set('n', 'gd', '<cmd>Lspsaga peek_definition<CR>', opts)
        vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)
        vim.keymap.set('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', opts)
        
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
      end,
    })
  end,
}
