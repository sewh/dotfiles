# aliases
alias reload="source ~/.bashrc && echo reloaded!"
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


# custom prompt
PS1='\[\e[30;103m\][ \W ]\[\e(B\e[m\]\n> '
