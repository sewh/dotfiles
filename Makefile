ZSHRC := $(HOME)/.zshrc
ZSHRCLOCAL := $(HOME)/.zshrc.local
TMUXCONF := $(HOME)/.tmux.conf
NVIMDIR := $(HOME)/.config/nvim
NVIMCONF := $(NVIMDIR)/init.lua

$(info *************************************)
$(info Home:          $(HOME))
$(info zshrc:         $(ZSHRC))
$(info zshrc.local:   $(ZSHRCLOCAL))
$(info Neovim Dir:    $(NVIMDIR))
$(info Neovim Config: $(NVIMCONF))
$(info *************************************)

.PHONY: all
all: zsh tmux nvim

.PHONY: zsh
zsh: $(ZSHRC) $(ZSHRCLOCAL)

$(ZSHRC): zshrc
	cp $< $@

$(ZSHRCLOCAL):
	touch $@

.PHONY: tmux
tmux: $(TMUXCONF)

$(TMUXCONF): tmux.conf
	cp $< $@

.PHONY: nvim
nvim: $(NVIMCONF)

$(NVIMCONF): nvim/init.lua
	cp $< $@

$(NVIMDIR):
	mkdir -p $@

