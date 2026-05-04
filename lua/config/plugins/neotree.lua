return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
	  "saifulapm/neotree-file-nesting-config",
    },
    lazy = false, -- neo-tree will lazily load itself
	config = function()
		require("neo-tree").setup({
			sources = { "filesystem", "buffers", "git_status" },
			popup_border_style = "",
			open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
			enable_git_status = true,
			git_status_async = true,
			close_if_last_window = true,
			enable_diagnostics = true,
			filesystem = {
				bind_to_cwd = false,
				follow_current_file = { enabled = true },
				use_libuv_file_watcher = true,
				filtered_items = {
					visible = true
				}
			},
			default_component_configs = {
				indent = {
					with_markers = true,
					with_expanders = true,
					expander_collapsed = '',
					expander_expanded = '',
				},
				modified = {
				  symbol = "",
				  highlight = "NeoTreeModified",
				},
                git_status = {
                    window = {
                        position = "float",
                    },
                    symbols = {
                        added = "A",      -- Или "A"
                        modified = "M",   -- Или "M"
                        deleted = "D",    -- Или "D"
                        renamed = "R",    -- Или "R"
                        untracked = "U",  -- Или "U"
                        ignored = "",    -- Или "I"
                        unstaged = "",
                        staged = "",
                        conflict = "",
                    },
                },
                name = {
                    trailing_slash = false,
                    use_git_status_colors = false,
                },
			},
			source_selector = {
				winbar = false,
				statusline = false
			},
		})
	end
  }
}
