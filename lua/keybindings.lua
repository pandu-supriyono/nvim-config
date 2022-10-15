-- Synchronize Packer plugins
map('n', '<Leader>ps', ':PackerSync<CR>')

-- Clear highlighted search results
map('n', '<C-_>', ':let @/ = ""<CR>')

-- Source current file
map('n', '<Leader>so', ':%so<CR>')

-- Window management and navigation
map('n', '<C-c>', ':q<CR>')
map('n', '<C-h>', '<C-W>h')
map('n', '<C-j>', '<C-W>j')
map('n', '<C-k>', '<C-W>k')
map('n', '<C-l>', '<C-W>')
map('n', '<C-up>', ':resize +5<CR>')
map('n', '<C-down>', ':resize -5<CR>')
map('n', '<C-right>', ':vertical resize +5<CR>')
map('n', '<C-left>', ':vertical resize -5<CR>')

map('n', '<C-b>', ':bd<CR>')

map('n', '\\', ':b#<CR>')
