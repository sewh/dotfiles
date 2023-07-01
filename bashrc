# aliases
alias reload="source ~/.bashrc && echo reloaded!"
alias gdb="gdb -q"
alias sctl="sudo systemctl"
alias jctl="sudo journalctl"

# golang stuff
export GOROOT=/usr/local/go
export GOPATH="${HOME}/go"
export PATH="${GOROOT}/bin:${PATH}"


# custom prompt
PS1='\[\e[43m\][ \W ]\[\e(B\e[m\]\n> '
