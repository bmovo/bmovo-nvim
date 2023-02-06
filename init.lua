-- vim.g.mapleader = "-" --

require "user.plugins"
require "bmovo.options"

-- require "user.treesitter"  代码高亮 --
require "user.nvim-tree"
require "user.keymaps"
require "user.telescope"
require("lualine").setup()
-- theme = "tokyonight" --

--lua require("user/pakcer") --

-- vim.cmd [[colorscheme gruvbox]] --
vim.background = "light"

require "user.colorscheme"
require 'lspconfig'.gopls.setup{}
