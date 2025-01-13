return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      styles = {
        functions = {"italic"},
        keywords = {"italic"}
      }
    })

    vim.cmd.colorscheme "catppuccin"
  end
}
