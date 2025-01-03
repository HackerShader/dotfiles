require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = require('config.llinetheme').theme(),
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {
        'NvimTree',
        'packer',
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      }
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'diagnostics'},
      lualine_c = {'ctime'},
      lualine_x = {''},
      lualine_y = {'filename'},
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {'filename'},
      lualine_c = {'ctime'},
      lualine_x = {},
    },
    tabline = {
    },
    winbar = {},
    inactive_winbar = {},
    extensions = {'nvim-tree'}
  }
