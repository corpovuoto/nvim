-- File: lua/plugins/lisp.lua
return {
	"Olical/conjure",
	ft = { "lisp", "scheme", "fennel", "clojure", "janet", "racket" },
	init = function()
		vim.g["conjure#log#hud#enabled"] = false -- optional: disables popup
	end,
}
