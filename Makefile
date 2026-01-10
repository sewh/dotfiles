ZSHRC := $(HOME)/.zshrc
ZSHRCLOCAL := $(HOME)/.zshrc.local
TMUXCONF := $(HOME)/.tmux.conf
NVIMDIR := $(HOME)/.config/nvim
NVIMCONF := $(NVIMDIR)/init.lua
TMUXINATORDIR := $(HOME)/.config/tmuxinator

$(info *************************************)
$(info Home:           $(HOME))
$(info zshrc:          $(ZSHRC))
$(info zshrc.local:    $(ZSHRCLOCAL))
$(info Neovim Dir:     $(NVIMDIR))
$(info Neovim Config:  $(NVIMCONF))
$(info Tmuxinator Dir: $(TMUXINATORDIR))
$(info *************************************)

# ensure required directories are created
$(shell mkdir -p $(NVIMDIR))
$(shell mkdir -p $(TMUXINATORDIR))

.PHONY: all
all: zsh tmux nvim tmuxinator

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

.PHONY: tmuxinator
tmuxinator: $(TMUXINATORDIR)/dev.yml

$(TMUXINATORDIR)/dev.yml: ./tmuxinator/dev.yml
	cp $< $@

