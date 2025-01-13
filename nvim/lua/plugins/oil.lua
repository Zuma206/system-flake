return {
  'stevearc/oil.nvim',
  dependencies = {
    "echasnovski/mini.icons"
  },
  config = function()
    local oil = require("oil")

    oil.setup({
      default_file_explorer = true,
      watch_for_changes = true,
      view_options = {
        show_hidden = true
      }
    })

    vim.keymap.set("n", "<Leader>e", oil.open)
  end
}
