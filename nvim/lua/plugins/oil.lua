return {
  'stevearc/oil.nvim',
  config = function()
    require("oil").setup({
      view_options = {
        show_hidden = true
      },
      keymaps = {
        ["g?"] = "actions.show_help",
        ["<CR>"] = "actions.select", 
        ["<C-v>"] = "actions.select_vsplit",
        ["<C-x>"] = "actions.select_split",
        ["<C-p>"] = "actions.preview",
        ["<C-c>"] = "actions.close",
        ["-"] = "actions.parent",
        ["g."] = "actions.toggle_hidden",
      },
    })
    vim.keymap.set("n", "<leader>e", "<CMD>Oil --float <CR>", {desc = "Open oil (float)" })
    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end,
}
