require('github-theme').setup({
    options = {
		 hide_end_of_buffer = true, -- Hide the '~' character at the end of the buffer for a cleaner look
		 hide_nc_statusline = true, -- Override the underline style for non-active statuslines
		 transparent = true,       -- Disable setting background
		 terminal_colors = true,
	}
})

vim.cmd('colorscheme github_dark_dimmed')
