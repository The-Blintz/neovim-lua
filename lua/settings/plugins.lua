-- vim.cmd [[packadd packer.nvim]]
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "plugins.lua",
  command = "source <afile> | PackerCompile",
})

require('packer').init({display = {auto_clean = false}})

return require('packer').startup(function(use)

  -- Load lua path
  local lua_path = function(name)
    return string.format("require'plugins.%s'", name)
  end

  -- Packer can manage itself as an optional plugin
  use { 'wbthomason/packer.nvim' }

-- Using Packer
    -- use {'navarasu/onedark.nvim', config = lua_path"theme"}

    -- If you are using Packer
    use {'marko-cerovac/material.nvim', config = lua_path"theme"}

    use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate",config = lua_path"treesitter"}

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
      }

      -- using packer.nvim
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}

    use({
      "kyazdani42/nvim-tree.lua",
      -- config = function()
      --   require("plugins.tree")
      -- end,
      -- devicons in lua
      requires = { "kyazdani42/nvim-web-devicons" },
    })

   
    
    use {'windwp/nvim-ts-autotag'}
    use {'p00f/nvim-ts-rainbow'}
    use {'windwp/nvim-autopairs'}

    -- Lua
    use {'folke/which-key.nvim'}
    
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'}, { "nvim-lua/popup.nvim" }}
      }

    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/nvim-cmp'}
    use {'saadparwaiz1/cmp_luasnip'}
    use {'hrsh7th/cmp-nvim-lua'}

    use {'L3MON4D3/LuaSnip'}
    use {'rafamadriz/friendly-snippets'}

    use { 'kyazdani42/nvim-web-devicons' }
    use { 'ryanoasis/vim-devicons' }
    -- " For vsnip users.
    use {'hrsh7th/cmp-vsnip'}
    use {'hrsh7th/vim-vsnip'}
    use {'onsails/lspkind.nvim'}

    use {'VonHeikemen/lsp-zero.nvim'}

    use {'neovim/nvim-lspconfig'}
    use {'williamboman/nvim-lsp-installer'}
    use {'pbrisbin/vim-mkdir'}

    use {'lukas-reineke/indent-blankline.nvim'}
    use {'norcalli/nvim-colorizer.lua'}

    use("rcarriga/nvim-notify")

    -- tpope
		use("tpope/vim-fugitive")
		use("tpope/vim-surround")

    -- commenting
		use("JoosepAlviste/nvim-ts-context-commentstring")
		use({ "numToStr/Comment.nvim", tag = "v0.6" })

    use("windwp/nvim-spectre") -- Spectre for find and replace

    	-- Formatting
		use("mhartington/formatter.nvim")

		use("airblade/vim-gitgutter")

    -- icons in completion
		use("onsails/lspkind-nvim")

    -- Trouble
		use({
			"folke/trouble.nvim",
			requires = "kyazdani42/nvim-web-devicons",
			config = function()
				require("trouble").setup({})
			end,
		})

    -- Todo comments
		use({
			"folke/todo-comments.nvim",
			requires = "nvim-lua/plenary.nvim",
			config = function()
				require("todo-comments").setup({})
			end,
		})

    -- Colorizer
		-- use("norcalli/nvim-colorizer.lua")

		-- jsonc file type for json - comments in json
		use("kevinoid/vim-jsonc")

    	-- better code action menu
		use({
			"weilbith/nvim-code-action-menu",
			cmd = "CodeActionMenu",
		})

    -- -- Lua
    -- use {
    --   "folke/trouble.nvim",
    --   requires = "kyazdani42/nvim-web-devicons",
    --   config = function()
    --     require("trouble").setup {
    --       -- your configuration comes here
    --       -- or leave it empty to use the default settings
    --       -- refer to the configuration section below
    --     }
    --   end
    -- }

    	-- firebase rules
		use("delphinus/vim-firestore")
    use {'akinsho/flutter-tools.nvim',
    requires = 'nvim-lua/plenary.nvim'}
    -- -- sessions
	-- 	use({
	-- 		"rmagatti/auto-session",
	-- 		config = function()
	-- 			require("auto-session").setup({
	-- 				log_level = "info",
	-- 				auto_session_suppress_dirs = { "~/", "~/Projects" },
	-- 			})
	-- 		end,
	-- 	})

-- Dashboard
use("goolord/alpha-nvim")
use("rhysd/git-messenger.vim")

end)
