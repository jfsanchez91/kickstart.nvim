return {
  'nvim-tree/nvim-tree.lua',
  config = function()
    vim.keymap.set('n', '<leader>te', '<cmd>NvimTreeToggle<CR>', { desc = '[T]oggle NvimTree [E]xplorer' })
    require('nvim-tree').setup {
      hijack_netrw = true,
      auto_reload_on_write = true,
    }
  end,
}
