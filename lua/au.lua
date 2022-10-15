local cmd = vim.api.nvim_command

cmd('au BufRead,BufNewFile *.njk setfiletype htmldjango')
