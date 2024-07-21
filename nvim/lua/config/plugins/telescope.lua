return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.3",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local telescope = require("telescope")
		telescope.load_extension("nerdy")
		telescope.setup({
			path_display = { "truncate" },
		})
	end,
}
