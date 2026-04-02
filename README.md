# dotfiles

Personal dotfiles for zsh, tmux, and neovim.

## Install

```sh
make install
```

This copies all configs to their expected locations (`~/.zshrc`, `~/.tmux.conf`, `~/.config/nvim/init.lua`, `~/.config/tmuxinator/dev.yml`).

## Dependencies

### Core

| Tool | Min Version | Used by |
|------|-------------|---------|
| `zsh` | — | Shell (`zshrc`) |
| `tmux` | — | Terminal multiplexer (`tmux.conf`) |
| `neovim` | 0.11+ | Editor (`nvim/init.lua`) |
| `git` | — | Version control (aliases in `zshrc`) |
| `make` | — | Dotfiles installer (`Makefile`) |

### Development tools

| Tool | Used by |
|------|---------|
| `tmuxinator` | Tmux session manager (`tmuxinator/dev.yml`, aliased as `tm`) |
| `lazygit` | Git TUI (aliased as `lg`, launched in tmuxinator layout) |
| `claude` | AI assistant CLI (launched in tmuxinator layout) |

### LSP servers (neovim)

| Tool | Language |
|------|----------|
| `rust-analyzer` | Rust |
| `gopls` | Go |

### Telescope dependencies (neovim fuzzy finder)

| Tool | Purpose |
|------|---------|
| `ripgrep` (`rg`) | Required for live grep |
| `fd` | Optional — improves find files performance |

### Utility tools (shell functions)

| Tool | Function |
|------|----------|
| `python3` | `serve()` — starts a local HTTP server |
| `tree` | `tre()` — directory tree with sensible defaults |
| `ssh` / `scp` / `rsync` | `setup()` — provisions dotfiles on remote hosts |

### Neovim plugins

Plugins are managed via Neovim's built-in `vim.pack.add` (0.11+) and cloned automatically on first launch.

| Plugin | URL | Purpose |
|--------|-----|---------|
| neovim-ayu | https://github.com/shatur/neovim-ayu | Ayu dark colorscheme |
| plenary.nvim | https://github.com/nvim-lua/plenary.nvim | Utility library (telescope dependency) |
| telescope.nvim | https://github.com/nvim-telescope/telescope.nvim | Fuzzy finder |
| lualine.nvim | https://github.com/nvim-lualine/lualine.nvim | Statusline |
| which-key.nvim | https://github.com/folke/which-key.nvim | Keybinding hints popup |
