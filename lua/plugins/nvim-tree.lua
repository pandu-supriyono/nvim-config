require('nvim-tree').setup{
  view = {
    width = 40,
    relativenumber = true
  }
}

map('n', '<Leader>t', ':NvimTreeToggle<CR>')
