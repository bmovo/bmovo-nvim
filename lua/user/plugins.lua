packer = require 'packer'

local use = packer.use

packer.reset()
packer.startup(function()
    -- lspconfig
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    
    -- the tools of plugin management
    use 'wbthomason/packer.nvim'
	config = {
		max_jobs = 16,
		display = {
				open_fn = function()
						return require('packer.util').float({ border = 'single' })
				end
		}
	}   
    use 'preservim/nerdtree'
    use 'Xuyuanp/nerdtree-git-plugin'
    use 'nvim-lualine/lualine.nvim'
    
    --[[theme config
    use {
        'sainnhe/gruvbox-material',
        setup = function()
            vim.g.gruvbox_material_background = 'soft'
        end,
        config = function()
            vim.cmd[[colorscheme gruvbox-material]]
    --]]
    use ("ful1e5/onedark.nvim")
    

    use ({
         "kyazdani42/nvim-tree.lua",
          requires = "kyazdani42/nvim-web-devicons"
    })
    use ({
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    })
    use 'fatih/vim-go'
end)

