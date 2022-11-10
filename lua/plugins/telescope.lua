require('telescope').setup{}

map('n', '<Leader>ff', ':Telescope find_files<CR>')
map('n', '<Leader>fg', ':Telescope live_grep<CR>')
map('n', '<Leader>fb', ':Telescope buffers<CR>')
map('n', '<Leader>fh', ':Telescope oldfiles<CR>')
map('n', '<Leader>fbr', ':Telescope git_branches<CR>')
map('n', '<Leader>fbc', ':Telescope git_bcommits<CR>')
map('n', '<Leader>fc', ':Telescope git_commits<CR>')
