vim.g.mapleader  = " "
vim.g.maplocalleader = ""

require "user.keymaps"
require "user.plugins"
require "user.lspconfig"
require "lspconfig".gopls.setup{}
require "user.cmp"
require "user.telescope"
-- require "user.treesitter"
require "user.autopairs"
require "user.gitsigns"
-- use nvim-tree instead -- require "user.neo-tree"
require "user.nvim-tree"
require "user.symbolsoutline"
require "user.lualine"
-- some wrong with it -- require "user.bufferline"
-- require "user.fzf"
require "user.vgit"
require "user.toggleterm"
require "user.neovide"
require "user.windows"

require "myself.options"
require "myself.buildsystem"
require "myself.filetype"
require "myself.format"

-- require "user.dap"
require "user.mason"
require "dap.dap-golang"
require'nvim-treesitter.configs'.setup{
    -- 启用高亮
    highlight = {
        enable = true,
	-- 禁用 vim 基于正则达式的语法高亮，太慢
        additional_vim_regex_highlighting = false,
    },
    -- 启用缩进
    indent = {
        enable = true,
    },
}
vim.cmd [[colorscheme gruvbox]]
