return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
    lazy=false,
	config = function ()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc",
                "typescript", "query","javascript", "html", "css", "astro", "tsx", "python", "graphql" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end

}
