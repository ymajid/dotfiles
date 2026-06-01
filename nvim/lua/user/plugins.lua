local fn = vim.fn
local cmd = vim.cmd

local ensure_packer = function()
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

    use 'godlygeek/tabular'
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/plenary.nvim'
    use 'folke/tokyonight.nvim'
    use 'wbthomason/packer.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use {'sonph/onehalf', rtp = 'vim'}
    use { 'nvim-telescope/telescope.nvim', tag='0.1.5', }
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani43/nvim-web-devicons', opt = true }, }
    use {
	'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
  if packer_bootstrap then
    require('packer').sync()
  end
end)
