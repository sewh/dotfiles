SAVEHIST=1000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history
setopt interactive_comments

# Created by newuser for 5.9
alias reload="source ~/.zshrc && echo reloaded!"
alias gdb="gdb -q"
alias sctl="sudo systemctl"
alias jctl="sudo journalctl"
if [[ ! -z "${WAYLAND_DISPLAY}" ]] ; then
    alias code="code --enable-ozone --ozone-platform=wayland"
fi

# golang stuff
export GOROOT=/usr/local/go
export GOPATH="${HOME}/go"
export PATH="${GOROOT}/bin:${PATH}"

export PATH="${HOME}/.local/bin:${PATH}"


# custom prompt
NEWLINE=$'\n'
PS1="%B%F{yellow}[%~]%f%b$NEWLINE> "


alias tf="terraform"
alias yay="GOROOT='' yay"

export EDITOR=nvim

bindkey -e
bindkey '^R' history-incremental-search-backward
bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search
