-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'shaunsingh/nord.nvim'
-- TJ
use 'nvim-telescope/telescope.nvim'
use("nvim-lua/plenary.nvim")
use("nvim-lua/popup.nvim")

-- The Primeagen
use("ThePrimeagen/harpoon")


use 'mbbill/undotree'

use 'vimwiki/vimwiki'
end)

