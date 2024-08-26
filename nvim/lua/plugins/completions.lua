return {
  {
    "hrsh7th/cmp-nvim-lsp" -- Es un motor de snippets (fragmentos de código) que permite crear y utilizar snippets personalizados en Neovim
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",-- Proporciona una fuente de autocompletado para nvim-cmp basada en los snippets definidos en LuaSnip.
      "rafamadriz/friendly-snippets", -- Contiene una colección de snippets predefinidos para varios lenguajes de programación, que pueden ser utilizados por LuaSnip.
    },
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),  -- Desplaza la documentación hacia abajo
          ["<C-f>"] = cmp.mapping.scroll_docs(4),   -- Desplaza la documentacion hacia arriba
          ["<C-Space>"] = cmp.mapping.complete(),   -- Abre el menú de completado
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- For luasnip users.
        }, {
          { name = "buffer" },
        }),
      })
    end
  }
}
