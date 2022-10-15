local g = vim.g
local o = vim.o
local c = vim.cmd

-- UI settings
o.termguicolors = true
o.number = true
o.numberwidth = 5
o.relativenumber = true
o.signcolumn = 'yes:1'
o.scrolloff = 8
g.syntax = 'on'
c[[highlight clear SignColumn]]
c[[colorscheme onedark]]

-- Format settings
o.expandtab = true
o.wrap = true
o.tabstop = 4
o.shiftwidth = 2
o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'

-- UX settings
o.clipboard = 'unnamedplus'
o.ignorecase = true
o.smartcase = true
g.mapleader = ' '
g.maplocalleader = ' '

-- Backup handling
o.backup = false
o.undofile = true
o.history = 50
o.undodir = '/tmp/vim-undo'
