return { 
	'nvim-telescope/telescope.nvim', 
	tag = '0.1.8', 
	dependencies = { 'nvim-lua/plenary.nvim' }, 
	defaults = {
		file_ignore_patterns = { "node_modules/" }
	},
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>p', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>l', builtin.live_grep, { desc = 'Telescope live grep' })
	end
}

