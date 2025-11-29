return {
	{
		"bjarneo/aether.nvim",
		name = "aether",
		priority = 1000,
		opts = {
			disable_italics = false,
			colors = {
				-- Monotone shades (base00-base07)
				base00 = "#292b31", -- Default background
				base01 = "#b4ab99", -- Lighter background (status bars)
				base02 = "#292b31", -- Selection background
				base03 = "#948a76", -- Comments, invisibles
				base04 = "#ffffff", -- Dark foreground
				base05 = "#d6d1c9", -- Default foreground
				base06 = "#d6d1c9", -- Light foreground
				base07 = "#ffffff", -- Light background

				-- Accent colors (base08-base0F)
				base08 = "#dd5544", -- Variables, errors, red
				base09 = "#f28b7c", -- Integers, constants, orange
				base0A = "#f3e9bd", -- Classes, types, yellow
				base0B = "#85a169", -- Strings, green
				base0C = "#E0CDB7", -- Support, regex, cyan
				base0D = "#bda07f", -- Functions, keywords, blue
				base0E = "#E4D8C8", -- Keywords, storage, magenta
				base0F = "#fff4d4", -- Deprecated, brown/yellow
			},
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")

			-- Enable hot reload
			require("aether.hotreload").setup()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}
