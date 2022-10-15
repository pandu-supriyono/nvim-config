-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'

  use 'sheerun/vim-polyglot'

  use 'lukas-reineke/indent-blankline.nvim'

  use 'christoomey/vim-tmux-navigator'

  use 'tpope/vim-commentary'

  use {
    'navarasu/onedark.nvim',

    config = function()
      require('plugins.onedark')
    end
  }

  use 'nvim-lua/plenary.nvim'

  use 'pantharshit00/vim-prisma'

  use {
    'neoclide/coc.nvim',
    branch = 'release',

    config = function()
      require('plugins.coc')
    end
  }

  use {
    'tpope/vim-fugitive',

    config = function()
      require('plugins.vim-fugitive')
    end
  }

  use {
    'akinsho/toggleterm.nvim', tag = 'v2.*',

    config = function()
      require('plugins.toggleterm')
    end
}

  use {
    'nvim-treesitter/nvim-treesitter',

    config = function()
      require('plugins.treesitter')
    end
  }

  use {
    'nvim-telescope/telescope.nvim',

    config = function()
      require('plugins.telescope')
    end
  }

  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },

    config = function ()
        require('plugins.alpha-nvim')
    end
  }

  use 'kyazdani42/nvim-web-devicons'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },

    config = function()
      require('plugins.nvim-tree')
    end
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },

    config = function()
      require('plugins.gitsigns')
    end
  }

  use {
    'nvim-lualine/lualine.nvim',

    config = function()
      require('plugins.lualine')
    end
  }

  use {
    'folke/which-key.nvim',

    config = function()
      require('plugins.which-key')
    end
  }

  if packer_bootstrap then
    require('packer').sync()
  end

end)
