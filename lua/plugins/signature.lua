return {
	"kshenoy/vim-signature",
	config = function()
		if vim.g.SignatureMarkTextHLDynamic then
			vim.g.SignatureMarkTextHL = 'Literal' -- Replace with a valid Signify group
		end
		if vim.g.SignatureMarkerTextHLDynamic then
			vim.g.SignatureMarkerTextHL = 'Literal' -- Replace with a valid Signify group
		end
	end
}
