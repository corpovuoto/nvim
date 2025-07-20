return {
  "AlphaTechnolog/pywal.nvim",
  name = "pywal-nvim",
  lazy = false,
  priority = 1000,
  config = function()
	  if GetOS() ~= "win" then
		  require("pywal").setup()
	  end
  end,
}
