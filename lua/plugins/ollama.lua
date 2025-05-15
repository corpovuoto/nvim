local url
if GetOS() == "win" then
	url = "http://127.0.0.1:11434"
else
	url = "http://192.168.1.25:11434"
end
return {
	"nomnivore/ollama.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = { "Ollama", "OllamaModel", "OllamaServe", "OllamaServeStop" },
	keys = {
		{ "<leader>oo", "<cmd>Ollama<cr>",      desc = "Ollama prompt" },
		{ "<leader>om", "<cmd>OllamaModel<cr>", desc = "Change Ollama model" },
	},
	---@type Ollama.Config
	opts = {
		model = "llama3.2:latest",
		url = url,
		stop = { "<|eot|>" },        -- stop tokens
		-- you can pass extra options like temperature, top_k, etc
		options = {
			temperature = 0.2,
		},
	},
}
