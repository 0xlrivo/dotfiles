return {
	"nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate",
	config = function()
		local tree_sitter_config = require("nvim-treesitter.configs")
		tree_sitter_config.setup({
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
