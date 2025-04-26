local cmp = require("cmp")

cmp.setup({
  window = {
    completion = cmp.config.window.bordered({
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    }),
    documentation = cmp.config.window.bordered({
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    }),
  },
  mapping = cmp.mapping.preset.insert({
    -- example keybindings
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  },
})
--print(vim.inspect(require("cmp").get_config().window))
