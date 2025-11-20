return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'onsails/lspkind.nvim',
    'rafamadriz/friendly-snippets', 
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local cmp = require('cmp')
    local lspkind = require('lspkind')
    
    require('luasnip.loaders.from_vscode').lazy_load()

    cmp.setup({
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
      }),
      sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
      },
      formatting = {
        fields = { "kind", "abbr" },
        format = function(entry, vim_item)
          vim_item.kind = lspkind.cmp_format({ mode = 'symbol' })(entry, vim_item).kind
          return vim_item
        end
      },
    })
    
    require('nvim-web-devicons').setup({
      default = true,
    })
  end,
}
