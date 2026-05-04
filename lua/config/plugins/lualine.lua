return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
        local mode = {
          'mode',
          fmt = function(str)
            return ' ' .. str
          end,
          separator = { left = '', right = '' }, right_padding = 2,
        }
		require('lualine').setup({
			options = {
				globalstatus = true,
				icons_enabled = true,
				theme = "neopywal",
				component_separators = '',
				section_separators = { left = '', right = '' },
				disabled_filetypes = {
				  statusline = {},
				  winbar = {},
				},
				always_last_session = true, -- Save and restore last session
			},
			sections = {
				lualine_a = { mode },
				lualine_b = { 'filetype', 'branch' },
				lualine_c = {
					},
				lualine_x = {},
                lualine_y = {
                    -- 🔥 Настроенный компонент diagnostics
                    {
                        'diagnostics',
                        sources = { "nvim_diagnostic" },
                        symbols = {
                            error = " ",
                            warn = " ",
                            info = "󰙎 ",
                            hint = "󰌵 ",
                        },
                        colored = false,
                        always_visible = false,
                    },
                    'lsp_status',
                },
				lualine_z = {
					{ 'location', separator = { right = '', left = '' }, left_padding = 2 },
				},
			},
			inactive_sections = {
				lualine_a = { 'filename' },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { 'location' },
			},
			tabline = {},
			extensions = {},
		})
	end
}
