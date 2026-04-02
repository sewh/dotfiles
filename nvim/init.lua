-- leader!
vim.g.mapleader = " "

-- plugins
vim.pack.add({
  -- add plugins here, e.g.:
  -- { src = "https://github.com/author/plugin.git" },
})

-- basic sets
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.list = true

vim.opt.number = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes:1"
vim.opt.scrolloff = 8
vim.opt.showcmd = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.undofile = true
vim.opt.clipboard = "unnamed"

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true
vim.cmd([[colorscheme wildcharm]])
vim.opt.showmode = false

-- No automatic comment insertion
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

-- clipboard
vim.g.clipboard = {
  name = 'OSC 52',
  copy = {
    ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
    ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
  },
  paste = {
    ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
    ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
  },
}
vim.opt.clipboard = "unnamedplus"

-- tabs
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = 'New tab' })
vim.keymap.set('n', '<leader>tl', ':tabnext<CR>', { desc = 'Next tab' })
vim.keymap.set('n', '<leader>th', ':tabprev<CR>', { desc = 'Previous tab' })
vim.keymap.set('n', '<leader>tc', ':tabclose<CR>', { desc = 'Close tab' })

-- extra syntax highlighting
vim.filetype.add({
  filename = {
    ['SConstruct'] = 'python',
    ['SConscript'] = 'python',
  },
  pattern = {
    -- Catches 'src/SConscript', 'hardware/SConscript', etc.
    ['.*SConscript'] = 'python',
    ['.*SConstruct'] = 'python',
  },
})

-- lsp
vim.lsp.config["rust"] = {
  -- Command and arguments to start the server.
  cmd = { 'rust-analyzer' },
  -- Filetypes to automatically attach to.
  filetypes = { 'rust' },
  -- Sets the "workspace" to the directory where any of these files is found.
  -- Files that share a root directory will reuse the LSP server connection.
  -- Nested lists indicate equal priority, see |vim.lsp.Config|.
  root_markers = { '.editorconfig', '.git' },
  -- Specific settings to send to the server. The schema is server-defined.
  -- Example: https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
  settings = {}
}
vim.lsp.enable({ "rust" })

vim.lsp.config["go"] = {
  cmd = { "gopls" },
  filetypes = { "go" },
  root_markers = { '.editorconfig', '.git', 'go.mod' },
  settings = { }
}
vim.lsp.enable({ "go" })

-- lsp keybindings

-- Completion
vim.keymap.set('i', '<C-Space>', '<C-x><C-o>', { desc = 'LSP completion' })

-- Core navigation
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Go to declaration' })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = 'Go to implementation' })
vim.keymap.set('n', 'gy', vim.lsp.buf.type_definition, { desc = 'Go to type definition' })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Find references' })

-- Documentation & help
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Hover documentation' })
vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, { desc = 'Signature help' })

-- Code actions & refactoring
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename symbol' })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code actions' })
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = 'Format buffer' })

-- Diagnostics
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show line diagnostics' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Previous diagnostic' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Diagnostics to location list' })

-- go specific formatting
vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.opt_local.expandtab = false  -- Use actual tabs, not spaces
    vim.opt_local.tabstop = 4        -- Display tabs as 4 spaces wide
    vim.opt_local.shiftwidth = 4     -- Indent by 4 spaces when using >> or 
    vim.opt_local.softtabstop = 4    -- Backspace deletes 4 spaces worth
    vim.opt_local.list = false       -- Hide invisible characters for Go files
  end,
})
