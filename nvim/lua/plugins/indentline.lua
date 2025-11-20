return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  config = function()
    require('ibl').setup({
      scope = { enabled = false },
      exclude = {
        filetypes = {"help", "terminal", "dashboard", "packer", "lspinfo"},
      },
    })
  end,
}
