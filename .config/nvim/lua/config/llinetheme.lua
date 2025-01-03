    local M = {}
    M.theme = function()
        local colors = {
            fg     = '#eeffff',
            bg     = '#263238',
            darkgray = "#16161d",
            blue = "#82aaff",
            gray = "#eeffff",
            green  = '#c3e88d',
            purple = '#c792ea',
            red    = '#f07178',
            gray1  = '#314549',
            gray2  = '#2E3C43',
            gray3  = '#515559',
            innerbg = nil,
            outerbg = "#16161D",
            normal = "#7e9cd8",
            insert = "#98bb6c",
            visual = "#ffa066",
            replace = "#e46876",
            command = "#e6c384",
        }
        return {
            inactive = {
                a = { fg = colors.fg, bg = colors.bg, gui = "bold" },
                b = { fg = colors.fg, bg = colors.bg },
                c = { fg = colors.fg, bg = colors.gray2 },
            },
            visual = {
                a = { fg = colors.bg, bg = colors.purple, gui = "bold" },
                b = { fg = colors.gray, bg = colors.outerbg },
                c = { fg = colors.gray, bg = colors.innerbg },
            },
            replace = {
                a = { fg = colors.darkgray, bg = colors.red, gui = "bold" },
                b = { fg = colors.gray, bg = colors.outerbg },
                c = { fg = colors.gray, bg = colors.innerbg },
            },
            normal = {
                a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
                b = { fg = colors.fg, bg = colors.outerbg },
                c = { fg = colors.fg, bg = colors.innerbg },
            },
            insert = {
                a = { fg = colors.darkgray, bg = colors.green, gui = "bold" },
                b = { fg = colors.gray, bg = colors.outerbg },
                c = { fg = colors.gray, bg = colors.innerbg },
            },
            command = {
                a = { fg = colors.darkgray, bg = colors.red, gui = "bold" },
                b = { fg = colors.gray, bg = colors.outerbg },
                c = { fg = colors.gray, bg = colors.innerbg },
            },
        }
    end
    return M
