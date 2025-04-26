return {
  -- Mason for package management
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },
  
  -- Mason-LSPConfig bridge
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    config = true,
  },
  
  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      
      -- Define LSP keybindings
      local on_attach = function(_, bufnr)
        local bufmap = function(mode, lhs, rhs)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr })
        end
        
        -- Navigation
        bufmap("n", "gd", vim.lsp.buf.definition)
        bufmap("n", "K", vim.lsp.buf.hover)
        bufmap("n", "gr", vim.lsp.buf.references)
        
        -- Refactoring
        bufmap("n", "<leader>rn", vim.lsp.buf.rename)
        bufmap("n", "<leader>ca", vim.lsp.buf.code_action)
        
        -- Diagnostics
        bufmap("n", "[d", vim.diagnostic.goto_prev)
        bufmap("n", "]d", vim.diagnostic.goto_next)
        --bufmap("n", "<leader>e", vim.diagnostic.open_float)
      end

      -- Server configurations
      local servers = {
        "lua_ls", 
        "pyright", 
        "tsserver",
        "clangd", 
        "rust_analyzer", 
        "hls"
      }
      
      for _, server in ipairs(servers) do
        lspconfig[server].setup {
          capabilities = capabilities,
          on_attach = on_attach,
        }
      end
    end,
  },
  
  -- Autocompletion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { 'i', 's' }),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),
        }),
        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
      })
    end,
  }
}

