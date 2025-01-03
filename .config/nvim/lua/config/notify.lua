require("notify").setup {
        stages = 'slide',
		render = 'simple',
        fps = 60,
        background_colour = 'FloatShade',
        timeout = 1000,
        top_down = true,
}
vim.notify = require('notify')
