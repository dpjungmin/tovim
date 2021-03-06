--[[ https://github.com/nvim-lualine/lualine.nvim ]]

require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'auto',
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right ='' },
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {
      {
        'branch',
        color = { fg = 'LightBlue' }
      },
      'diff',
    },
    lualine_c = {
      {
        'filename',
        path = 1, -- Relative path
        symbols = {
          modified = '[+]',
          readonly = '[-]',
          unnamed = '[No Name]',
        },
        color = { fg = 'LightGrey' },
      },
    },
    lualine_x = {
      {
        'filetype',
        color = { fg = 'LightGrey' },
      },
    },
    lualine_y = {
      { 'progress', color = { fg = 'LightGrey' }},
    },
    lualine_z = {
      'location',
      {
        'diagnostics',
        sources = { 'nvim_diagnostic' },
        sections = { 'error', 'warn', 'info', 'hint' },
        diagnostics_color = {
          error = 'DiagnosticError',
          warn = 'DiagnosticWarn',
          info = 'DiagnosticInfo',
          hint = 'DiagnosticHint',
        },
        symbols = { error = 'E', warn = 'W', info = 'I', hint = 'H' },
      },
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = { 'quickfix', 'fugitive', 'nvim-tree', 'toggleterm' },
}
