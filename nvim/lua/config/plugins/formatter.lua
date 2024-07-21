return {
	{
		"mhartington/formatter.nvim",
		config = function()
			local formatter = require("formatter")

			formatter.setup({
				filetype = {
					css = { require("formatter.filetypes.css").prettierd },
					html = { require("formatter.filetypes.html").prettierd },
					java = { require("formatter.filetypes.java").google_java_format },
					json = { require("formatter.filetypes.json").prettierd },
					lua = { require("formatter.filetypes.lua").stylua },
					markdown = { require("formatter.filetypes.markdown").prettierd },
					ruby = { require("formatter.filetypes.ruby").rubocop },
					toml = { require("formatter.filetypes.toml").prettierd },
					yaml = { require("formatter.filetypes.yaml").prettierd },
				},
			})
		end,
	},
}
