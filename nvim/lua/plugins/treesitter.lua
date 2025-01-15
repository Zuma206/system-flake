return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "go",
        "json",
        "nix",
        "typescript"
      },
      sync_install = false,
    })
  end
}
