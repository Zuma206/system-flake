return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local bufferline = require("bufferline")

    bufferline.setup({
      options = {
        show_buffer_close_icons = false,
        show_buffer_icons = false,
        tab_size = 10,
        numbers = function(numbers)
          return numbers.ordinal
        end,
      }
    })

    for i = 1, 9 do
      vim.keymap.set("n", "<A-"..i..">", function()
        bufferline.go_to_buffer(i)
      end)
    end

    for i = 1, 9 do
      vim.keymap.set("n", "<A-S-"..i..">", function()
        bufferline.move_to(i)
      end)
    end
  end
}
