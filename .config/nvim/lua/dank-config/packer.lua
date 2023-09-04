-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			-- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
			vim.cmd('colorscheme catppuccin-frappe')
		end
	}

	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use 'mbbill/undotree'

    use 'jiangmiao/auto-pairs'

    use 'machakann/vim-sandwich'

    use 'f-person/git-blame.nvim'

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
	}
}

end)
