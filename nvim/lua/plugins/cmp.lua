return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",
    "b0o/schemastore.nvim"
  },
  config = function()
    local lsps = {
      "lua_ls",
      "nixd",
      "ts_ls",
      "gopls",
      {
        "jsonls",
        {
          json = {
            schemas = require('schemastore').json.schemas(),
            validate = { enable = true }
          }
        }
      }
    }

    local luasnip = require("luasnip")
    local cmp = require("cmp")

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end
      },
      sources = {
        { name = "nvim_lsp" }
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<TAB>'] = cmp.mapping.confirm({ select = true })
      }),
    })

    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    local lspconfig = require("lspconfig")

    for _, lsp in pairs(lsps) do
      if type(lsp) == "string" then
        lspconfig[lsp].setup({ capabilities = capabilities })
      else
        local name, settings = lsp[1], lsp[2]
        lspconfig[name].setup({
          capabilities = capabilities,
          settings = settings
        })
      end
    end
  end
}
