return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
    lazy = false,
    keys = {
        { "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
        { "<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" }
    },
	config = function()
		require("bufferline").setup({
			options = {
                theamable = true,
                close_command = function(n) Snacks.bufdelete(n) end,
				always_show_bufferline = true,
				theamable = true,
				offsets = {
					{
						filetype = "neo-tree",
						text = "",
					},
				},
				hover = {
					enabled = true,
					reveal = { "close" },
					delay = 200,
				},
				show_close_icon = false,
			},
            highlights = require("neopywal.theme.plugins.bufferline").setup()
		})
	end
}
