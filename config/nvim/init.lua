-- aliases
local set = vim.opt
local setlocal = vim.opt_local
local keymap = vim.api.nvim_set_keymap

-- packages
require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'fatih/vim-go'
  use 'editorconfig/editorconfig-vim'
  use 'neovim/nvim-lspconfig'
  use 'hashivim/vim-terraform'
end)

-- text changes
set.encoding = 'utf-8'

-- tab options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.smarttab = true
set.autoindent = true

-- search options
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.hlsearch = true

-- clipboard options
set.clipboard = 'unnamedplus'

-- custom key bindings
keymap("i", 'jj', '<Esc>', {})
keymap("i", 'ppp', '<Esc>pa', {})

-- mouse changes
set.mouse = 'a'

-- appearance changes
set.background = 'dark'
set.number = true

-- autogroups
-- vim.cmd('autocmd FileType lua setlocal tabstop=2 softtabstop=2 shiftwidth=2')
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function(args)
    setlocal.tabstop = 2
    setlocal.softtabstop = 2
    setlocal.shiftwidth = 2
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "sh",
  callback = function(args)
    setlocal.tabstop = 2
    setlocal.softtabstop = 2
    setlocal.shiftwidth = 2
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "c",
  callback = function(args)
    setlocal.tabstop = 2
    setlocal.softtabstop = 2
    setlocal.shiftwidth = 2
  end,
})
-- package-specific config

-- lsp mode
local lspconfig = require 'lspconfig'

lspconfig.pyright.setup({})
lspconfig.gopls.setup({})


