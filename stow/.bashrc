[[ $- != *i* ]] && return

source "${HOME}/dotfiles/aliases.bash"
eval "$(starship init bash)"
