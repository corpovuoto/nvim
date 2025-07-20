return {
  "AlphaTechnolog/pywal.nvim",
  name = "pywal-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("pywal").setup()
  end,
}
