return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                              , branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>p', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>f', builtin.live_grep, { desc = 'Telescope live grep' })
		--vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })
		--vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
	end
}
