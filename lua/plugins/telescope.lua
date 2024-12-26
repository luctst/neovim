-- plugins/telescope.lua:
return {
  {
    'nvim-telescope/telescope.nvim',
     tag = '0.1.8',
     dependencies = {
			'nvim-lua/plenary.nvim',
			"nvim-tree/nvim-web-devicons",
			"debugloop/telescope-undo.nvim"
     },
     config = function()
      local actions = require("telescope.actions")
      local builtin = require('telescope.builtin')
       
       -- set keymaps
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
  
			require("telescope").setup({
				defaults = {
					file_ignore_patterns = {
						"node_modules",
						"ios/Pods/*",
						"vendor",
					}
				},
			})
			require('telescope').load_extension('undo')
		 	vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
		 end
  }
}

