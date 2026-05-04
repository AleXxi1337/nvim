return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		require("noice").setup({
            notify = {
                enabled = false, -- Это решит конфликт
            },
			views = {
				notify = {
					-- Use the `nvim-notify` backend
					backend = "notify",
					-- Use a minimal view with static stages
					render = "minimal",
					stages = "static",
					-- Set a timeout of 3000 milliseconds (3 seconds)
					timeout = 1000,
					-- Set maximum height to 75% of the screen height
					max_height = function() return math.floor(vim.o.lines * 0.75) end,
					-- Set maximum width to 60% of the screen width
					max_width = function() return math.floor(vim.o.columns * 0.60) end,
					-- Do not focus the window on open
					on_open = function(win) vim.api.nvim_win_set_config(win, { focusable = false }) end,
				},
			},
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
				},
			},
			presets = {
				bottom_search = true, -- use a classic bottom cmdline for search
				command_palette = true, -- position the cmdline and popupmenu together
				long_message_to_split = true, -- long messages will be sent to a split
				inc_rename = false, -- enables an input dialog for inc-rename.nvim
				lsp_doc_border = true, -- add a border to hover docs and signature help
			},
		})
	end
}
