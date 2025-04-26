function ShowBinds()
	for _, map in ipairs(vim.api.nvim_get_keymap('n')) do
		print(map.lhs, "->", map.rhs)
	end
end
