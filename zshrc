# YOU PROBABLY DON'T WANT TO EDIT THIS FILE AT $HOME/.zshrc! #

# autocomplete
#source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# reload support
alias reload="source ~/.zshrc && echo reloaded!"

# git aliases
alias add="git add"
alias co="git commit"
alias commit="git commit"
alias st="git status"
alias push="git push"
alias lg="lazygit"

# tmux aliases
alias tn="tmux new -s"
alias ta="tmux attach -t"
alias tacd='tmux attach -c $(pwd) -t'
alias tls="tmux ls"
alias tm="tmuxinator"
function dev() {
  local name="${1}"
  tmuxinator start dev "${name}" $(pwd)
}

# installing dotfiles support
setup() {
  local host="${1}"

  if [[ -z "${host}" ]]; then
    echo "Usage: setup hostname"
    return 1
  fi

  # prove we can ssh in
  if ! ssh "${host}" echo hi | grep -q "hi"; then
    echo "Can't SSH into ${host}"
    return 1
  else
    echo "Successfully SSHed into ${host}"
  fi

  # copy tmux config
  if ! scp ~/.tmux.conf "${host}:~/.tmux.conf" >/dev/null; then
    echo "Couldn't copy .tmux.conf to ${host}"
    return 1
  else
    echo "Copied .tmux.conf to ${host}"
  fi

  # copy neovim directory
  if ! ssh "${host}" "mkdir -p ~/.config/nvim"; then
    echo "Couldn't ensure ~/.config/nvim exists on ${host}"
    return 1
  else
    echo "Created ~/.config/nvim"
  fi

  if ! rsync -av ~/.config/nvim/ "${host}:~/.config/nvim" >/dev/null; then
    echo "Couldn't copy neovim directory to ${host}"
    return 1
  else
    echo "Copied neovim directory to ${host}"
  fi

  # copy zshrc
  if ! scp ~/.zshrc "${host}:~/.zshrc" >/dev/null; then
    echo "Couldn't copy .zshrc to ${host}"
    return 1
  else
    echo "Copied .zshrc to ${host}"
  fi
}

# useful functions

# create and enter a directory
mkcd() {
  mkdir -p "$1" && cd "$1"
}

# recursive find files
ff() {
  find . -type f -iname "*$1*" 2>/dev/null
}

# recursive find directories
fd() {
  find . -type d -iname "*$1*" 2>/dev/null
}

# serve a directory
serve() {
  local port=${1:-8000}
  echo "Serving on http://localhost:$port"
  python3 -m http.server "$port"
}

# a better tree command
tre() {
  tree -aC -I '.git|node_modules|vendor|__pycache__' --dirsfirst "$@" | less -FRNX
}

# prompt
PS1='%F{blue}[%m] %~ %(?.%F{green}.%F{red})%#%f '

# path
export PATH="$HOME/.local/bin:$PATH"

# editor
export EDITOR="nvim"

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt interactivecomments
unsetopt extended_glob
unsetopt beep
bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "~/.zsh-comp"

autoload -Uz compinit
compinit

# load machine local settings
LOCALFILE="${HOME}/.zshrc.local"
if [[ -f "${LOCALFILE}" ]]; then
  source "${LOCALFILE}"
fi
