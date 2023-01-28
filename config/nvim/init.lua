-- aliases
local set = vim.opt
local setlocal = vim.opt_local
local keymap = vim.api.nvim_set_keymap

-- get rid of netrw since we're using nvim-tree later on
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- packages
require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'fatih/vim-go'
  use 'editorconfig/editorconfig-vim'
  use 'neovim/nvim-lspconfig'
  use 'hashivim/vim-terraform'
  use 'ms-jpq/coq_nvim'
  use 'ms-jpq/coq.artifacts'
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
  })
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { "ellisonleao/gruvbox.nvim" }
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
vim.g.mapleader = ","
keymap("i", 'jj', '<Esc>', {})
keymap("i", 'ppp', '<Esc>pa', {})

-- mouse changes
set.mouse = 'a'

-- appearance changes
set.background = 'dark'
set.number = true
set.termguicolors = true

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

-- neovide changes
if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0
  vim.cmd("colorscheme gruvbox")
end

-- package-specific config

-- lsp mode
local lspconfig = require 'lspconfig'
local coq = require "coq"

lspconfig.pyright.setup({})
lspconfig.gopls.setup({})
lspconfig.rust_analyzer.setup(coq.lsp_ensure_capabilities({
    cmd = {"rustup", "run", "stable", "rust-analyzer"} ,
}))
vim.cmd('COQnow -s')

-- surround mode
local surround = require 'nvim-surround'
surround.setup()

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- nvim-tree
require("nvim-tree").setup()
keymap('n', '<leader>n', ':NvimTreeToggle<cr>', {})

-- lualine
require('lualine').setup()
