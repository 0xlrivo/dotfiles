return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
    	"nvim-lua/plenary.nvim",
      	"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      	"MunifTanjim/nui.nvim",
    },
    config = function()
	vim.keymap.set('n', '<C-b>', ':Neotree toggle<CR>')       -- CTRL B -> toggle the neotreee tab
	vim.keymap.set('n', '<C-shift-b>', ':Neotree focus<CR>')  -- CTRL SHIFT B -> focus on the neotree tab
    end
}
