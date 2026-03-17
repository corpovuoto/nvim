
vim.api.nvim_command([[
	  function! NvlimeBuildServerCommandFor_xxx(nvlime_loader, nvlime_eval)
		  return ["sbcl",
		  			  \ "--dynamic-space-size 4Gb",
					  \ "--load", "C:/Users/matte/Programming/nvlime/lisp/load-nvlime.lisp",
					  \ "--eval", a:nvlime_eval]
	  endfunction
]])

